# dotfiles

These are configuration files for my development environment. **Please read this article**

### How to Use

1. You must **Back Up** all your own dotfiles.
2. Clone this repository (**Warning**: Please don't clone the submodules of this repository.)

```bash
git clone https://github.com/mwjjeong/dotfiles.git
```

3. For _zsh_, you should replace the default terminal with _[iTerm2](https://iterm2.com)_.
4. Install [Powerline font](https://github.com/powerline/powerline) if you don't have it.
5. Execute copy_to_home.sh inside the cloned directory, which makes the configuration files available in your home directory.

```bash
chmod 755 copy_to_home.sh           # if this is not executable yet
./copy_to_home.sh                   # If you want to copy all
./copy_to_home.sh {directory_name}  # If you want to copy a specific directory
```

6. For _zsh_, install the following things, and follow each guideline when installing each of them.

   1. Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
   2. Install [powerlevel10k](https://github.com/romkatv/powerlevel10k)

7. For _zsh_, configure your terminal using `p10k configure`
