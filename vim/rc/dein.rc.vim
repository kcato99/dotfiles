if has('nvim')
  let s:path = empty($XDG_CACHE_HOME) ? expand('~/.cache/nvim/dein') : expand("$XDG_CACHE_HOME/nvim/dein")
else
  let s:path = empty($XDG_CACHE_HOME) ? expand('~/.cache/vim/dein') : expand("$XDG_CACHE_HOME/vim/dein")
endif

let s:dein_dir = s:path
                 \ .'/repos/github.com/Shougo/dein.vim'

if &runtimepath !~ '/dein.vim'
  if !isdirectory(s:dein_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
  endif
  execute 'set runtimepath+=' . fnamemodify(s:dein_dir, ':p')
endif

if !dein#load_state(s:path)
  finish
endif

call dein#begin(s:path, expand('<sfile>'))

call dein#load_toml('~/dotfiles/vim/rc/dein.toml', {'lazy': 0})
call dein#load_toml('~/dotfiles/vim/rc/deinlazy.toml', {'lazy' : 1})
if has('nvim')
  " call dein#load_toml('~/dotfiles/vim/rc/deinneo.toml', {})
endif
call dein#end()
call dein#save_state()

" let g:deoplete#enable_at_startup = 1

if has('vim_starting') && dein#check_install()
  " Installation check.
  call dein#install()
endif
