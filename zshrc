source "$HOME/.zsh/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# A few bundles
antigen bundle command-not-found
antigen bundle git

# ZSH users bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply
