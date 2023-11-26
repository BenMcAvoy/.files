source "$HOME/.zsh/antigen.zsh"
source "$HOME/.funcs.zsh"

export PATH="$PATH:/home/$USER/.local/bin"
export PATH="$GOPATH/bin:$PATH"
export GOPATH="$HOME/go"
export EDITOR="nvim"

# Initiate zoxide
eval "$(zoxide init zsh)"

# Initiate Homebrew
if [ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Setup Antigen
antigen use oh-my-zsh

# Load Antigen bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle command-not-found
antigen bundle git

# Load theme
antigen theme robbyrussell

# Finish setting up Antigen
antigen apply

alias neo="~/Applications/neovide*.AppImage 2>/dev/null"
alias gc="gitclone"
alias ls="exa -l"
alias j="just"
