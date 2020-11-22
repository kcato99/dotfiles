let g:ale_statusline_format = ['✗ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_format = '[%linter%] %s'

" 表示領域
let g:ale_list_window_size = 3

" ファイル保存時のみLinter実行
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'naver'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

" let b:ale_fixers = {'javascript': ['eslint']}
let b:ale_linters = ['eslint']

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠ '
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1

" quickfix に表示する
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1


" for go
let g:go_fmt_command = "gofumpt"
