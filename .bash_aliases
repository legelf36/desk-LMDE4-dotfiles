#!/bin/bash

# QOL aliases
alias ..='cd ..'

# More bash aliases for QOL improvments
# Long list of files (not hidden).
alias ll='ls -lv --group-directories-first'

# List all files.
alias la='ls -A --group-directories-first'

# Long List of all files.
alias lla='ls -Al --group-directories-first'

# Long list of files (not hidden), then piped
# through pager.
alias lm='ll |more'

# Long list of files (not hidden) with sub
# directories.
alias lr='ll -R'

# Disk free human readable.
alias df='df -h'

# function to simplify ssh login after key has
# been sent
sshin () {
    ssh 192.168.0."$1"
    return
}
export -f sshin

