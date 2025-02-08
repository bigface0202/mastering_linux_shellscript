#!/bin/bash
read "file_compression?Choose H, M or L comporession: "
read "dir_name?Which directory do you want to back up to "
echo "$file_compression"
echo "$dir_name"
# If directory is not existed, create
test -d "$HOME/$dir_name" || mkdir -m 700 "$HOME/$dir_name"
backup_dir="$HOME/$dir_name"
tar_l="-cvf $backup_dir/b.tar --exclude $backup_dir $HOME"
tar_m="-czvf $backup_dir/b.tar.gz --exclude $backup_dir $HOME"
tar_s="-cjvf $backup_dir/b.tar.bzip2 --exclude $backup_dir $HOME"
if [ "$file_compression" = "L" ]; then
    tar_opt=$tar_l
elif [ "$file_compression" = "M" ]; then
    tar_opt=$tar_m
else
    tar_opt=$tar_h
fi
tar $tar_opt