# Some handy aliases.
# Add this or symlink this file at $ZSH/custom/.

# Expand aliases after sudo too.
alias sudo="sudo "

# Aliases to extract different archives.
alias xgz="tar -xvzf"
alias xz="unzip"

# Aliases for disk usage commands.
# Default to GB units
alias df="df -h"
# Total disk usage in human readable form. Include hidden files.
alias du="du -h -c"
# Total disk usage in human readable form. Include hidden files and only summary
# of folders.
alias dum="du -h -c --max-depth=1"

# Aliases to compress folders into different archives.
function compress_gzip() {
  tar -cvzf $1 $2
}

alias cgz=compress_gzip

function compress_zip() {
  zip -r $1 $2
}

alias cz=compress_zip

# Alias for the find command
alias ff=find_file

function find_file() {
  find $1 -type f -name $2
}

alias fd=find_dir

function find_dir() {
  find $1 -type d -name $2
}

# Aliases for tmux. The ones with optional args at the end require the name of
# the session to be given. The "-2" is used to get the right color scheme.
alias tmls="tmux ls"
alias tma="tmux -2 attach -t"
alias tmd="tmux detach -s"
alias tmn="tmux -2 new -s"
alias tmk="tmux kill-session -t"
alias tmka="killall tmux"
alias tmclr="tmux clear-history"

# Alias for rm with confirmation.
alias rmi="rm -i"
