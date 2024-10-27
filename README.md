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

To test if installed successfully
```{shell}
stow -V
```

## Sync

Run the script to sync:
```{shell}
./setup.sh
```
