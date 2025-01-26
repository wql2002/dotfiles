#!/bin/bash

# Check if zsh exists
if ! [ -x "$(command -v zsh)" ]; then
    echo "[INSTALL] Installing zsh"
    sudo apt install -y zsh
fi

# Check if oh-my-zsh exists
if ! [ -d "$HOME/.oh-my-zsh" ]; then
    echo "[INSTALL] Installing oh-my-zsh"
    # Prevent launching zsh after installation by passing the `RUNZSH` environment variable
    RUNZSH=no sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Ensure ZSH_CUSTOM is set
if [ -z "$ZSH_CUSTOM" ]; then
    ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
fi

# Check if powerlevel10k exists
if ! [ -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    echo "[INSTALL] Installing powerlevel10k"
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi

echo "[INSTALL] Zsh, Oh My Zsh, and Powerlevel10k installation completed successfully!"

# Optional: Change the default shell to zsh for the user
if [ "$SHELL" != "$(command -v zsh)" ]; then
    echo "[ZSH] Changing default shell to zsh"
    chsh -s "$(command -v zsh)"
fi
