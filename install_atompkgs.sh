#!/usr/bin/bash

# core packages to make use of Atom productive
apm install language-r language-julia language-lua language-diff
apm install git-plus git-status git-control git-time-machine remote-edit
apm install color-picker env-from-shell file-icons highlight-selected
apm install linter linter-lintr linter-pylint linter-lua linter-markdown
apm install script vim-mode minimap autocomplete-python project-manager

# additional packages to enhance productivity on OSX
if [ `uname` == "Darwin" ]; then
  apm install ink julia-ide julia-client jude  # Julia IDE support in Atom
  apm install language-latex language-scala latex r-exec
  apm install activate-power-mode travis-ci-status merge-conflicts
  apm install an-old-hope-syntax ask-stack open-github-from-npm atom-macros
  apm install minimap-find-and-replace minimap-pigments minimap-cursorline
  apm install minimap-highlight-selected minimap-git-diff minimap-linter
fi
