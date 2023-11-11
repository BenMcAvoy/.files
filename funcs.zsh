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

