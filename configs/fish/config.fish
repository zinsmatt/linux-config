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
alias gt="git citool"

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

set -xg LC_ALL C

# CUDA
set -xg PATH "/usr/local/cuda/bin" $PATH

# CMake
set -xg PATH "/home/mzins/opt/cmake/bin" $PATH

# Qt
set -xg LD_LIBRARY_PATH "/home/mzins/Qt/5.9/gcc_64/lib" $LD_LIBRARY_PATH
set -xg LD_LIBRARY_PATH "/home/mzins/Qt/5.10.1/gcc_64/lib" $LD_LIBRARY_PATH
set -xg LD_LIBRARY_PATH "/home/mzins/Qt/5.11.0/gcc_64/lib" $LD_LIBRARY_PATH

# Miniconda
source /home/mzins/miniconda3/etc/fish/conf.d/conda.fish

# VTK
set -xg LD_LIBRARY_PATH "/home/mzins/opt/vtk/lib" $LD_LIBRARY_PATH

# LibPointMatcher
set -xg LD_LIBRARY_PATH "/home/mzins/opt/libpointmatcher/lib" $LD_LIBRARY_PATH

# LibNabo
set -xg LD_LIBRARY_PATH "/home/mzins/opt/libnabo/lib" $LD_LIBRARY_PATH

# Add 3D vision to pythonpath
set -xg PYTHONPATH "/home/mzins/dev/3D-Vision/" $PYTHONPATH
set -xg PYTHONPATH "/home/mzins/dev/Localization_from_ellipsoids/" $PYTHONPATH
set -xg PYTHONPATH "/home/mzins/dev/Localization_from_ellipsoids/uncertainties" $PYTHONPATH

