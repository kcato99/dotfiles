### memo

- ctags install
```bash
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
```
- gotags install
```bash
go get -u github.com/jstemmer/gotags
```


### tree
```bash
brew install tree
```
### fzf
```bash
brew install fzf
$(brew --prefix)/opt/fzf/install
```

### bat
```bash
brew install bat
```

### ripgrep
```bash
brew install ripgrep
```

### ag
```bash
brew install ag
```

### virtualenv
```bash
pyenv virtualenv 2.7.13 neovim2
pyenv virtualenv 3.6.1 neovim3

pyenv activate neovim2
pip install neovim
pyenv deactivate

pyenv activate neovim3
pip install neovim
pyenv deactivate
```

### tmux-xpanes
```
brew install tmux-xpanes
```

### Ricty fonts
```bash
brew install xquartz

brew install fontforge

brew tap sanemat/font

brew install ricty
出力されるインストールコマンドを実行
  cp ...
  fc-cache ...
```

