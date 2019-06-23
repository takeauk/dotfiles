#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0); pwd)

ln -snfv $SCRIPT_DIR/.bashrc ~/.bashrc
ln -snfv $SCRIPT_DIR/.bash_profile ~/.bash_profile

if [ ! -d ~/.config/fish ]; then
    mkdir -p ~/.config/fish
fi
ln -snfv $SCRIPT_DIR/.config/fish/config.fish ~/.config/fish/config.fish

ln -snfv $SCRIPT_DIR/.vimrc ~/.vimrc
ln -snfv $SCRIPT_DIR/.gvimrc ~/.gvimrc

if [ ! -d ~/.cache/dein ]; then
    mkdir -p ~/.cache/dein
fi
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.cache/dein/installer.sh
chmod u+x ~/.cache/dein/installer.sh
~/.cache/dein/installer.sh ~/.cache/dein
ln -snfv $SCRIPT_DIR/.cache/dein.toml ~/.cache/dein/dein.toml
ln -snfv $SCRIPT_DIR/.cache/dein_lazy.toml ~/.cache/dein/dein_lazy.toml

ln -snfv $SCRIPT_DIR/.tmux.conf ~/.tmux.conf
ln -snfv $SCRIPT_DIR/.hyper.js ~/.hyper.js

ln -snfv $SCRIPT_DIR/.gitignore_global ~/.gitignore_global
ln -snfv $SCRIPT_DIR/.tigrc ~/.tigrc

ln -snfv $SCRIPT_DIR/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -snfv $SCRIPT_DIR/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

set -x PATH /Applications/Visual Studio Code.app/Contents/Resources/app/bin/code $PATH
$SCRIPT_DIR/.vscode/extensions.sh
