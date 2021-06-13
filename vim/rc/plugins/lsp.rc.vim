" https://qiita.com/kitagry/items/216c2cf0066ff046d200
" https://github.com/prabirshrestha/vim-lsp
" https://github.com/mattn/vim-lsp-settings
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> gi <plug>(lsp-implementation)
  nmap <buffer> gt <plug>(lsp-type-definition)
  nmap <buffer> K <plug>(lsp-hover)
  nmap <buffer> <leader>rn <plug>(lsp-rename)
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
command! LspDebug let lsp_log_verbose=1 | let lsp_log_file = expand('~/lsp.log')

let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

" TODO: 反映されてない
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}


let g:lsp_highlights_enabled = 1
let g:lsp_textprop_enabled = 1
let g:lsp_virtual_text_enabled = 1

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
" let g:asyncomplete_auto_popup = 1
" let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 0
let g:lsp_preview_float = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_settings_filetype_go = ['gopls']

let g:lsp_settings = {}
" let g:lsp_settings['gopls'] = {
"   \  'workspace_config': {
"   \    'usePlaceholders': v:true,
"   \    'analyses': {
"   \      'fillstruct': v:true,
"   \    },
"   \  },
"   \  'initialization_options': {
"   \    'usePlaceholders': v:true,
"   \    'analyses': {
"   \      'fillstruct': v:true,
"   \    },
"   \  },
"   \}
"

autocmd BufWritePre <buffer> LspDocumentFormatSync
" autocmd BufWritePre <buffer> call execute('LspCodeActionSync source.organizeImports')
" autocmd BufWritePre <buffer> LspDocumentDiagnostics


inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
