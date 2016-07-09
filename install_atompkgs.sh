#!/usr/bin/bash

if [ `uname` == "Linux" ]; then
  if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 1>&2
    exit 1
  fi
fi

## core packages to improve productivity and add a nice theme
apm install pigments minimap linter highlight-selected file-icons
apm install git-plus git-time-machine merge-conflicts color-picker
apm install vim-mode expose todo-show ask-stack travis-ci-status
apm install script Hydrogen  # run code interactively in the editor!
apm install seti-ui seti-syntax  # a nice dark theme I actually like
## packages to add some extra functionality to the minimap
apm install minimap-highlight-selected minimap-find-and-replace
apm install minimap-cursorline minimap-git-diff minimap-pigments
## support tools for languages, linters, autocompletion, and Juno IDE 
apm install language-r language-lua language-diff language-markdown
apm install language-latex autocomplete-python autocomplete-clang
apm install linter-lintr linter-pylint linter-lua linter-markdown linter-clang
apm install language-julia ink julia-client  # to set up Juno (Julia IDE)

# packages that are OS X only
if [ `uname` == "Darwin" ]; then
  apm install r-exec
fi
