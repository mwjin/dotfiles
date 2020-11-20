#!/bin/bash
# This script is to copy the dotfiles into the HOME directory automatically.

# Get directories of dotfiles
dirs=(`ls -l | grep "^d" | awk '{print $9}'`);

# Copy dotfiles into the HOME directory
for dir in ${dirs[@]}
do
    dotfiles=(`ls -A $dir`);
    
    for dotfile in ${dotfiles[@]}
    do
        dotfile_path="$dir/$dotfile";
        cmd="cp -r $dotfile_path $HOME/.";
        echo "[CMD] $cmd";
        $cmd;
    done;
done;

# Clone remote repositories of git submodules for the dotfiles
submod_paths=(`cat .gitmodules | grep path | awk '{split($0, a, " = "); print a[2]}'`);
submod_urls=(`cat .gitmodules | grep url | awk '{split($0, a, " = "); print a[2]}'`);

for ((i=0;i<${#submod_paths[@]};i++));
do
    submod_path="$HOME/${submod_paths[i]#*/}";  # Make an absolute local path of the submodule
    submod_url="${submod_urls[i]}";
    cmd="git clone $submod_url $submod_path";
    echo "[CMD] $cmd";
    $cmd;
done;

