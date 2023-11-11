source "$HOME/.zsh/antigen.zsh"

export PATH="$PATH:/home/$USER/.local/bin"
export PATH="$GOPATH/bin:$PATH"
export GOPATH="$HOME/go"
export EDITOR="nvim"

alias neo="~/Applications/neovide*.AppImage 2>/dev/null"
alias ls="exa -l"
alias gc="gitclone"
function docxify() {
  pandoc -i $1 -o $(echo $1 | sed "s/\.[^.]*$//").docx
}

# For cloning git repos
# e.g. `gc Llanite/Llanite`
function gitclone() {
  if [ -z "$1" ]; then
    echo "No repository path"
    return
  fi

  git clone git@github.com:$1 || echo "Attempting HTTP as SSH failed."; git clone https://github.com/$1
}

# Initiate zoxide
eval "$(zoxide init zsh)"

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
