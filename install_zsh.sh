#!/bin/bash

# check if zsh exists
if [ -z "$(which zsh)" ]; then
    echo "Installing zsh"
    sudo apt install zsh

    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    echo "Installing powerlevel10k"
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi
