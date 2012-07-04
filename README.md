## Installation

Copy the repository
```bash
cd ~
git clone git://github.com/Acekat/dotfiles.git ~/.dotfiles
```

Link files in home directory
```bash
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/dircolors ~/.dircolors
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/sublime-text-2 ~/.config/sublime-text-2
ln -s ~/.dotfiles/conky/conkyrc ~/.conkyrc
```

Upload submodules
```bash
cd .dotfiles
git submodule update --init
cp vim/solarized-modified.vim vim/bundle/solarized-theme/colors/solarized.vim
```


## TO-DO

- use shell command instead of vcprompt (cf. [gf3](https://github.com/gf3/dotfiles/blob/master/.bash_prompt) and [cowboy](https://github.com/cowboy/dotfiles/blob/master/source/50_prompt.sh))
- write a bootstrap script
