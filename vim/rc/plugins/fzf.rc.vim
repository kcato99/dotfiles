set rtp+=/usr/local/opt/fzf
nnoremap <silent> ,a :<C-u>Ag<CR>
nnoremap <silent> ,f :<C-u>ProjectFiles<CR>
nnoremap <silent> ,b :<C-u>Buffers<CR>
nnoremap <silent> ,m :<C-u>History<CR>

" https://wonderwall.hatenablog.com/entry/2017/10/07/220000
function! s:find_git_root()
  " プロジェクトルートで開く
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
" command! -bang -nargs=? -complete=dir Files
"     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'head -20 {}']}, <bang>0)



" Terminal buffer options for fzf
autocmd! FileType fzf
autocmd  FileType fzf set noshowmode noruler nonu

" 見た目をいい感じにする
" 参考: https://github.com/junegunn/dotfiles/blob/master/vimrc
if has('nvim')
  function! s:create_float(hl, opts)
    let buf = nvim_create_buf(v:false, v:true)
    let opts = extend({'relative': 'editor', 'style': 'minimal'}, a:opts)
    let win = nvim_open_win(buf, v:true, opts)
    call setwinvar(win, '&winhighlight', 'NormalFloat:'.a:hl)
    call setwinvar(win, '&colorcolumn', '')
    return buf
  endfunction

  function! FloatingFZF()
    " Size and position
    let width = float2nr(&columns * 0.9)
    let height = float2nr(&lines * 0.6)
    let row = float2nr((&lines - height) / 2)
    let col = float2nr((&columns - width) / 2)

    " Border
    let top = '╭' . repeat('─', width - 2) . '╮'
    let mid = '│' . repeat(' ', width - 2) . '│'
    let bot = '╰' . repeat('─', width - 2) . '╯'
    let border = [top] + repeat([mid], height - 2) + [bot]

    " Draw frame
    let s:frame = s:create_float('Comment', {'row': row, 'col': col, 'width': width, 'height': height})
    call nvim_buf_set_lines(s:frame, 0, -1, v:true, border)

    " Draw viewport
    call s:create_float('Normal', {'row': row + 1, 'col': col + 2, 'width': width - 4, 'height': height - 2})
    autocmd BufWipeout <buffer> execute 'bwipeout' s:frame
  endfunction

  let g:fzf_layout = { 'window': 'call FloatingFZF()' }
endif

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction



" https://github.com/junegunn/fzf.vim/pull/733
" https://github.com/junegunn/fzf/blob/master/README-VIM.md

" function! s:delete_buffers(lines)
"   let l:preview_window = get(g:, 'fzf_preview_window', &columns >= 120 ? 'right': '')
"   let l:options = [
"   \   '-m',
"   \   '--tiebreak=index',
"   \   '-d', '\t',
"   \   '--prompt', 'Delete> '
"   \ ]
"   if len(l:preview_window)
"     let l:options = extend(l:options, get(fzf#vim#with_preview(
"           \   {"placeholder": "{2}"},
"           \   l:preview_window
"           \ ), 'options', []))
"   endif
"
"   return fzf#run(fzf#wrap({
"   \ 'source':  map(
"   \   filter(
"   \     range(1, bufnr('$')),
"   \     {_, nr -> buflisted(nr) && !getbufvar(nr, "&modified")}
"   \   ),
"   \   {_, nr -> s:format_buffer(nr)}
"   \ ),
"   \ 'sink*': {
"   \   lines -> execute('bdelete ' . join(map(lines, {
"   \     _, line -> substitute(split(line)[0], '^\[\|\]$', '', 'g')
"   \   })), 'silent!')
"   \ },
"   \ 'options': l:options,
"   \}))
" endfunction
"
" command! BD call fzf#run(fzf#wrap({
"   \ 'source': s:list_buffers(),
"   \ 'sink*': { lines -> s:delete_buffers(lines) },
"   \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
" \ }))
"
" function! s:format_buffer(b)
"   let l:name = bufname(a:b)
"   let l:name = empty(l:name) ? '[No Name]' : fnamemodify(l:name, ":p:~:.")
"   let l:flag = a:b == bufnr('')  ? '%' :
"           \ (a:b == bufnr('#') ? '#' : ' ')
"   let l:modified = getbufvar(a:b, '&modified') ? ' [+]' : ''
"   let l:readonly = getbufvar(a:b, '&modifiable') ? '' : ' [RO]'
"   let l:extra = join(filter([l:modified, l:readonly], '!empty(v:val)'), '')
"   return substitute(printf("[%s] %s\t%s\t%s", a:b, l:flag, l:name, l:extra), '^\s*\|\s*$', '', 'g')
" endfunction
