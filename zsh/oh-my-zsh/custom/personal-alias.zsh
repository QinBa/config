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