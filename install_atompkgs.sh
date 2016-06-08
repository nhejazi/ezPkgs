#!/usr/bin/bash

# core packages to make use of Atom productive
apm install pigments minimap linter highlight-selected file-icons
apm install git-plus git-time-machine merge-conflicts color-picker
apm install expose todo-show vim-mode script Hydrogen ask-stack
apm install travis-ci-status atom-material-ui atom-material-syntax
apm install language-r language-lua language-diff language-markdown
apm install linter-lintr linter-pylint linter-lua linter-markdown linter-clang
apm install autocomplete-python autocomplete-julia autocomplete-clang
apm install ink language-julia julia-client  # to setup Juno (Julia IDE)

# additional packages to enhance productivity on OSX
if [ `uname` == "Darwin" ]; then
  apm install language-latex language-scala r-exec latex csv-to-json tablr
  apm install an-old-hope-syntax activate-power-mode  # some fun additions
  apm install minimap-find-and-replace minimap-pigments minimap-liner
  apm install minimap-cursorline minimap-highlight-selected minimap-git-diff
fi
