# dotfiles
These are configuration files for my development environment.

### How to Use
1. You must **Back Up** all your own dotfiles.
1. Clone this repository (**Warning**: Please don't clone the submodules of this repository.)
```bash
git clone https://github.com/mwjjeong/dotfiles.git
```
3. Execute copy_to_home.sh inside the cloned directory, which makes the configuration files available in your home directory.
```bash
chmod 755 copy_to_home.sh           # if this is not executable yet
./copy_to_home.sh                   # If you want to copy all
./copy_to_home.sh {directory_name}  # If you want to copy a specific directory
```
