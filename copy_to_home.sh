#!/bin/bash
# Usage: ./copy_to_home.sh [Directory name] ([]: Optional)
# This script is to copy the dotfiles into the HOME directory automatically.

# Copy dotfiles into the HOME directory
if [ "$#" -eq 1 ]
then
    # One specific directory
    dir=$1
    dotfiles=(`ls -A $dir`);
    
    for dotfile in ${dotfiles[@]}
    do
        dotfile_path="$dir/$dotfile";
        cmd="cp -n -r $dotfile_path $HOME/.";
        echo "[CMD] $cmd";
        $cmd;
    done;
else
    # No arguments -> Copy all directories
    # Get directories of dotfiles
    dirs=(`ls -l | grep "^d" | awk '{print $9}'`);
    for dir in ${dirs[@]}
    do
        dotfiles=(`ls -A $dir`);
    
        for dotfile in ${dotfiles[@]}
        do
            dotfile_path="$dir/$dotfile";
            cmd="cp -n -r $dotfile_path $HOME/.";
            echo "[CMD] $cmd";
            $cmd;
        done;
    done;
fi;

# Clone remote repositories of git submodules for the dotfiles
submod_paths=(`cat .gitmodules | grep path | awk '{split($0, a, " = "); print a[2]}'`);
submod_urls=(`cat .gitmodules | grep url | awk '{split($0, a, " = "); print a[2]}'`);

for ((i=0;i<${#submod_paths[@]};i++))
do
    submod_path="$HOME/${submod_paths[i]#*/}";  # Make an absolute local path of the submodule
    submod_url="${submod_urls[i]}";
    
    do_clone=true
    if [ "$#" -eq 1 ]
    then
        if [[ $submod_path != *$1* ]]
        then
            do_clone=false
        fi
    fi

    if [ $do_clone = true ]
    then
        cmd="git clone $submod_url $submod_path";
        echo "[CMD] $cmd";
        $cmd;
    fi
done;

