# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# easy zshrc shortcuts
alias zshconfig="nvim ~/.zshrc"
alias zshsource="source ~/.zshrc"

# recursively delete .DS_Store fiels
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
# remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"

# list PATH separated by new lines
alias lpath='echo $PATH | tr ":" "\n"'

alias k="kubectl"
alias python="python3"

# libtorch config
export LIBTORCH=/usr/local/libtorch/
# LIBTORCH_INCLUDE must contains `include` directory.
export LIBTORCH_INCLUDE=/usr/local/libtorch/
# LIBTORCH_LIB must contains `lib` d irectory.
export LIBTORCH_LIB=/usr/local/libtorch/
export DYLD_LIBRARY_PATH=${LIBTORCH}/lib:$DYLD_LIBRARY_PATH

# modular 
export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"

#python 
alias pip='python -m pip'
