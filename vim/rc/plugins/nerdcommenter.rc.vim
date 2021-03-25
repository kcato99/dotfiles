" コメントの間にスペースを空ける
" let NERDSpaceDelims = 1
" <Leader>/でコメントをトグル(NERD_commenter.vim)
map <Leader>/ <Leader>c<space>
" <Leader>csでblock形式のコメントアウト
" map <Leader>cs <Leader>cs
" 未対応ファイルタイプのエラーメッセージを表示しない
" let NERDShutUp=1
" コメント表示を左に揃える
" let g:NERDDefaultAlign='left'


" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
