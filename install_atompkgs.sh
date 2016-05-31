#!/usr/bin/bash

# core packages to make use of Atom productive
apm install language-r language-julia language-lua language-diff script
apm install linter linter-lintr linter-pylint linter-lua linter-markdown
apm install git-plus git-status git-control git-time-machine remote-edit
apm install color-picker env-from-shell file-icons highlight-selected
apm install minimap vim-mode autocomplete-python project-manager uber-juno

# additional packages to enhance productivity on OSX
if [ `uname` == "Darwin" ]; then
  apm install language-latex language-scala latex r-exec
  apm install activate-power-mode travis-ci-status merge-conflicts
  apm install an-old-hope-syntax ask-stack open-github-from-npm atom-macros
  apm install minimap-find-and-replace minimap-pigments minimap-cursorline
  apm install minimap-highlight-selected minimap-git-diff minimap-linter
fi
