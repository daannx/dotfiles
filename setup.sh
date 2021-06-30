#!/bin/sh

# base packages
sudo apt install git curl wget exuberant-ctags cscope fzf neovim clangd bear npm nodejs zsh

# neovim stuff
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/daannx/dotfiles.git

cp init.vim ~/.config/nvim/

cp vimrc ~/.config/nvim/

cp cscope_maps.vim ~/.config/nvim/

# zsh (oh-my-zsh stuff)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "Run `nvim` then in neovim run `:PlugInstall`"

