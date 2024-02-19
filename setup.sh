#!/usr/bin/env bash

echo "Needs re-working!"
exit -1

# function backup_file() {
#     file=$1
#     backup_file="${file}.bak"

#     if [[ -f $file ]]; then
#         if [[ -f $backup_file ]]; then
#             i=1
#             while [[ -f "${file}.${i}.bak" ]]; do
#                 i=$((i+1))
#             done
#             backup_file="${file}.${i}.bak"
#         fi
#         mv "$file" "$backup_file"
#         echo "Backup created: $backup_file"
#     else
#         echo "$file doesn't exist"
#     fi
# }

# function backup() {
#     path=$1
#     backup_path="${path}.bak"

#     if [[ -d $path ]]; then
#         if [[ -d $backup_path ]]; then
#             i=1
#             while [[ -d "${path}.${i}.bak" ]]; do
#                 i=$((i+1))
#             done
#             backup_path="${path}.${i}.bak"
#         fi
#         cp -r "$path" "$backup_path"
#         echo "Backup created: $backup_path"
#     elif [[ -f $path ]]; then
#         backup_file "$(dirname $path)/$(basename $path)"
#     else
#         echo "Path does not exist: $path"
#     fi
# }

# function link() {
#     echo "$(pwd)/$1"
#     echo "$HOME/$2"

#     ln -s "$(pwd)/$1" "$HOME/$2"
# }

# backup "$HOME/.config/nvim"

# link "nvim" ".config/"
