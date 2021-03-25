"------------------------------------
" tagbar.Vim
" https://github.com/preservim/tagbar/wiki
" https://github.com/preservim/tagbar/blob/master/doc/tagbar.txt
"------------------------------------
map <silent> <leader>tl :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
" let g:tagbar_position = 'leftabove'
let g:tagbar_autofocus = 0
let g:tagbar_compact = 1
let g:tagbar_vertical = 25
let g:tagbar_autoshowtag = 1
" let g:tagbar_show_balloon = 1
" let g:tagbar_previewwin_pos = "aboveleft"
" let g:tagbar_autopreview = 1
let g:tagbar_type_ada = {
    \ 'ctagstype': 'ada',
    \ 'kinds' : [
        \'P:package specs',
        \'p:packages',
        \'t:type',
        \'u:subtypes',
        \'c:record type components',
        \'l:enum type literals',
        \'v:variables',
        \'f:formal parameters',
        \'n:constants',
        \'x:exceptions',
        \'R:subprogram specs',
        \'r:subprograms',
        \'K:task specs',
        \'k:tasks',
        \'O:protected data specs',
        \'o:protected data',
        \'e:entries',
        \'b:labels',
        \'i:identifiers'
    \]
    \}

" @see
" https://github.com/jstemmer/gotags
let g:tagbar_type_go = {
  \ 'ctagstype' : 'go',
  \ 'kinds'     : [
    \ 'p:package',
    \ 'i:imports:1',
    \ 'c:constants',
    \ 'v:variables',
    \ 't:types',
    \ 'n:interfaces',
    \ 'w:fields',
    \ 'e:embedded',
    \ 'm:methods',
    \ 'r:constructor',
    \ 'f:functions'
  \ ],
  \ 'sro' : '.',
  \ 'kind2scope' : {
    \ 't' : 'ctype',
    \ 'n' : 'ntype'
  \ },
  \ 'scope2kind' : {
    \ 'ctype' : 't',
    \ 'ntype' : 'n'
  \ },
  \ 'ctagsbin'  : 'gotags',
  \ 'ctagsargs' : '-sort -silent'
\ }

" autocmd VimEnter * nested :call tagbar#autoopen(1)
" autocmd BufEnter * nested :call tagbar#autoopen(0)
autocmd VimEnter * TagbarOpen
wincmd l
autocmd VimEnter * wincmd l
