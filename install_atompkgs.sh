#!/usr/bin/bash

## core packages to improve productivity and add a nice theme
apm install pigments minimap linter highlight-selected file-icons
apm install git-plus git-time-machine merge-conflicts color-picker
apm install expose todo-show vim-mode script Hydrogen ask-stack travis-ci-status
apm install atom-material-ui atom-material-syntax atom-material-syntax-dark
## support tools for languages, linters, autocompletion, and Juno IDE 
apm install language-r language-lua language-diff language-markdown
apm install autocomplete-python autocomplete-julia autocomplete-clang
apm install linter-lintr linter-pylint linter-lua linter-markdown linter-clang
apm install ink language-julia julia-client  # to setup Juno (Julia IDE)

# additional packages to install on OS X only
if [ `uname` == "Darwin" ]; then
  ## packages to add some extra functionality to the minimap
  apm install minimap-find-and-replace minimap-pigments minimap-liner
  apm install minimap-cursorline minimap-highlight-selected minimap-git-diff
  ## some extra stuff that is nice to have but totally necessary
  apm install language-latex language-scala r-exec latex tablr json-converter
  apm install an-old-hope-syntax activate-power-mode
fi
