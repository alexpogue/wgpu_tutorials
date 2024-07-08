#!/usr/bin/env bash

# For running on Windows. From https://betterprogramming.pub/developing-rust-games-in-wsl-677cd1f37bc1

directory_name=${PWD##*/}
tmp_path="/mnt/c/Users/M262907/Documents/aa/fun/$directory_name"

mkdir -p $tmp_path

rsync . $tmp_path -r --exclude-from=.gitignore

cd $tmp_path

powershell.exe -Command "cargo run $@"
