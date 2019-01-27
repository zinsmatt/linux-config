# remove fish_greeting
set fish_greeting

# make Vim the default editor
set --export EDITOR "vim -f"

# make Vim usable with git
set --export GIT_EDITOR "vim -f"


# Alias
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls'

alias grep='grep --color=auto'
alias fgrep='grep --color=auto'
alias egrep='egrep --color=auto'

alias s="sudo"
alias py='python3'
alias g='git'
alias v='vim'

alias tree="tree -A"
alias treed="tree -d"
alias tree1="tree -d -L 1"
alias tree2="tree -d -L 2"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias a="atom ."
alias c="code ."
alias ltr="ll -ltr"
alias f="find ./ -name"

alias m="make -j16"
alias cm="cmake-gui ."

# Create a new directory and enter it
function mkd
	mkdir -p "$argv"; and cd "$argv";
end


# Set environment variables
# l : local (only 1 session and 1 scope)
# g : global (only 1 session, all scopes)
# U : universal (should be set only once and are listed in .config/fish/fish.MAC) (LD_LIBRARY_PATH par example)
# x : to set
# e : to unset

# CUDA
set -xg PATH "/usr/local/cuda/bin" $PATH

# CMake
set -xg PATH "/home/matthieu/opt/cmake/bin" $PATH

# Qt
set -xg LD_LIBRARY_PATH "/home/matthieu/Qt/5.9.6/gcc_64/lib" $LD_LIBRARY_PATH
