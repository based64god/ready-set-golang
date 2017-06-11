#!
# Easy setup of $GOPATH for you aspiring gophers.
# Made by: Ben Roytenberg

# Figure out system shell.
shelltype=$SHELL

# Guess the dotfile associated with your shell.
dotfile="~/.${shelltype##*/}rc"

# Set $GOPATH according to your install.
echo "export GOPATH=~/go" >> ${dotfile}

# Allow calling of Go related commands, regardless of path.
echo "export PATH="$PATH:$GOPATH/bin"" >> ${dotfile}

# Refresh your dotfile, and get ready to Go.
source ${dotfile}
