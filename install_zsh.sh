#!/bin/bash

# check if zsh exists
if ! [ -x "$(command -v zsh)" ]; then
    echo "Installing zsh"
    sudo apt install -y zsh
fi

# check if oh-my-zsh exists
if ! [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# check if powerlevel10k exists
if ! [ -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    echo "Installing powerlevel10k"
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi
