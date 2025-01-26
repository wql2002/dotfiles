# dotfiles

my personal dotfile collections

## Set Up

### Install stow

To install from source:

```{shell}
wget https://ftp.gnu.org/gnu/stow/stow-2.4.1.tar.gz
tar -xvpzf stow-2.4.1.tar.gz

cd stow-2.4.1/
./configure
make
make install
```

Use `sudo make install` if permission denied.

To test if installed successfully

```{shell}
stow -V
```

### Install zsh

**TL;DR**: run `./install_zsh.sh`

To install zsh:

```{shell}
sudo apt install zsh
```

To install oh-my-zsh:

```{shell}
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

To install powerlevel10k:

```{shell}
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

## Sync

Before syncing, make sure to backup your existing dotfiles and install the required software.

### stow-based

Run the script to sync:

```{shell}
./setup.sh
```

### dotbot-based

Run the script to sync:

```{shell}
./install
```
