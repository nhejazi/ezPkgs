#!/usr/bin/bash

## core packages to improve productivity and add a nice theme
apm install pigments minimap linter highlight-selected file-icons
apm install git-plus git-time-machine merge-conflicts color-picker
apm install vim-mode expose todo-show ask-stack travis-ci-status
apm install script Hydrogen  # run code interactively in the editor!
apm install seti-ui seti-syntax  # a nice dark theme I actually like
## support tools for languages, linters, autocompletion, and Juno IDE 
apm install language-r language-lua language-diff language-markdown
apm install autocomplete-python autocomplete-julia autocomplete-clang
apm install linter-lintr linter-pylint linter-lua linter-markdown linter-clang
apm install language-julia ink julia-client  # to set up Juno (Julia IDE)

# additional packages to install on OS X only
if [ `uname` == "Darwin" ]; then
  ## packages to add some extra functionality to the minimap
  apm install minimap-highlight-selected minimap-find-and-replace
  apm install minimap-cursorline  minimap-git-diff minimap-pigments
  ## some extra stuff that is nice to have but totally unnecessary
  apm install language-latex language-scala r-exec latex tablr
  apm install an-old-hope-syntax activate-power-mode
fi
