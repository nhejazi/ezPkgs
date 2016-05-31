#!/usr/bin/bash

# core packages to make use of Atom productive
apm install language-r language-julia language-lua language-diff script
apm install linter linter-lintr linter-pylint linter-lua linter-markdown
apm install minimap vim-mode git-plus remote-edit file-icons color-picker
apm install autocomplete-python travis-ci-status ask-stack merge-conflicts
apm install env-from-shell highlight-selected project-manager uber-juno

# additional packages to enhance productivity on OSX
if [ `uname` == "Darwin" ]; then
  apm install language-latex language-scala latex activate-power-mode
  apm install an-old-hope-syntax open-github-from-npm atom-macros r-exec
  apm install minimap-find-and-replace minimap-pigments minimap-cursorline
  apm install minimap-highlight-selected minimap-git-diff minimap-linter
fi
