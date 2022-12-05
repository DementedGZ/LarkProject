#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

if [ "$1" = "admin" ]
then
  echo "ls - lists directory contents of specified directory"
  echo "     ls [directory]"
  echo
  echo "cat - print the standard output of specified file"
  echo "      cat [file]"
  echo
  echo "cd - changes current working directory"
  echo "     cd [directory]"
  echo
  echo "pwd - lists current working directory"
  echo
elif [ "$1" = "security" ]
then
  echo "tail - output the last part of specified file"
  echo "       tail [file]"
  echo
elif [ "$1" = "nav" ]
then
  echo "less - the opposite of more! allows you to scroll throw a file's text"
  echo "       less [file]"
  echo
  echo "scp - protocol to transfer files between two servers"
  echo "      scp [hostname]:/home/[username]/[file] [target]:/home/[targeruser]/[file]"
  echo 
elif [ "$1" = "elec" ]
then
  echo "ln - makes symbolic links between files or directories"
  echo "     ln [target] [file/directory]     (hard link)"
  echo "     ln -s [target] [file/directory]  (soft link)"
  echo
elif [ "$1" = "engine" ]
then
  echo "touch - creates new file under given filename"
  echo "        touch [file]"
elif [ "$1" = "storage" ]
then
  echo "mv - move or rename files"
  echo "     mv [source] [file/directory]"
  echo
elif [ "$1" = "medbay" ]
then
  echo "& - used to run a process or command in the background"
  echo "    [process] &"
  echo
  echo "CTRL-C - used to stop a currently running process"
  echo
elif [ "$1" = "weapons" ]
then
  echo "rm - removes specified files"
  echo "     rm [file]"
  echo
elif [ "$1" = "reactor" ]
then
  echo "cp - copy specified files and directories"
  echo "     cp [source] [file/directory]"
  echo
fi
