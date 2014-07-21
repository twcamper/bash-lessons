#! /usr/bin/env bash

###################################################################################
# Exercises
###################################################################################

# 1 - Make the script start with a directory supplied as an argument from the command line, rather than current working directory
# 2 - What happens if you don't use the 'basename' command?  What happens if $dir or $depth_indent aren't local?
# 3 - Refactor the script so it gives identical output, but works using 'cd' rather than 'ls'.  That is, you won't give 'ls' a path when you
#     call it in the 'for' loop, and the 'for' loop will only use 2 variables instead of three.
# 4   Does one version run faster?  Use the 'time' command and point to a big directory.
# 5 - Instead of printing entries in each dir (the dir and file names), just print the dir name and its depth in the tree as a number.
#     You'll probably need a 3rd positional parameter
#
#     root-dir 0
#       first-child 1
#         foo 2
#           what-is-the-answer 3
#       next-child 1
#         foo 2
#         foo-foo 2
#           bar 3
#           tavern 3
#             grill 4
#               kitchen 5
# 6 - Add an option to 'ls' that will make the script walk UP the tree and print your entire file system

print-tree-recursive()
{
  local dir=$1
  local depth_indent=$2

  echo ${depth_indent}+$(basename $dir)

  depth_indent+='  '
  for entry in $(ls $dir)
  do
    if [ -d $dir/$entry ]  # directory?
    then
      print-tree-recursive $dir/$entry $depth_indent
    #else
      #echo $depth_indent$entry
    fi
  done
}

IFS=$'\n' # only split on newlines so 'ls' call doesn't break up names with spaces

print-tree-recursive $(pwd)
