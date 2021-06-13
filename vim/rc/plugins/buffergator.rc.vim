" g:buffergator_viewport_split_policy~
    " Default: "L"
    " Determines how a new Buffergator window will be opened. Can be one of the
    " following values:
    "     "L"   : vertical left (full screen height)
    "     "R"   : vertical right (full screen height)
    "     "T"   : horizontal top (full screen width)
    "     "B"   : horizontal bottom (full screen width)
    "     "n/N" : No split, uses existing window
let g:buffergator_viewport_split_policy="B"

" g:buffergator_autodismiss_on_select~
    " Default: 1
    " If true, then selection an entry with <CR> will close the catalog. Otherwise,
    " catalog stays open. Default is 1.
let g:buffergator_autodismiss_on_select=1

" g:buffergator_autoexpand_on_split~
"     Default: 1
"     If true and running in GUI mode, then the application screen will be expanded
"     to accommodate the Buffergator window.
let g:buffergator_autoexpand_on_split=1

" g:buffergator_autoupdate~
"     Default: 0
"     If true, then the Buffergator window will be updated when the buffer list
"     changes.
let g:buffergator_autoupdate=0

" g:buffergator_split_size~
"     Default: 40
"     If greater than 0, this will be the width of the Buffergator window in any
"     vertical splitting mode, or its height in any horizontal splitting mode.
let g:buffergator_split_size=40

" g:buffergator_vsplit_size~
"     Default: 40
"     If greater than 0, this will be the width of the Buffergator window in
"     any vertical splitting mode.
let g:buffergator_vsplit_size=40

" g:buffergator_hsplit_size~
"     Default: 20
"     If greater than 0, this will be the height of the Buffergator window in
"     any horizontal splitting mode.
let g:buffergator_hsplit_size=10
