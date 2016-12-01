#!/usr/bin/env bash

if [ `uname` == "Linux" ]; then
  if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 1>&2
    exit 1
  fi
fi

## core packages to improve productivity
apm install pigments minimap linter highlight-selected file-icons
apm install git-plus git-time-machine merge-conflicts color-picker
apm install vim-mode atom-beautify markdown-preview-plus atomic-chrome
apm install script hydrogen r-exec  # code interactively!
apm install seti-ui seti-syntax  # a dark theme I actually like

## packages to add some extra functionality to the minimap
apm install minimap-highlight-selected minimap-find-and-replace
apm install minimap-cursorline minimap-git-diff minimap-pigments

## support tools for languages, linters, autocompletion, Juno IDE
apm install language-r language-julia language-scala language-lua
apm install language-markdown language-latex latex-autocomplete
apm install autocomplete-clang autocomplete-python autocomplete-r
apm install linter-clang linter-pylint linter-lintr linter-lua

## Juno, the IDE for the Julia language
## (auto-install on macOS; manually install for Linux machines)
if [ `uname` == "Darwin" ]; then
  apm install uber-juno
fi
