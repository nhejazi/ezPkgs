#!/usr/bin/env bash

if [ `uname` == "Linux" ]; then
  if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 1>&2
    exit 1
  fi
fi

## core packages to improve productivity
apm install pigments linter highlight-selected file-icons zentabs atom-clock
apm install git-plus git-time-machine merge-conflicts color-picker
apm install scroll-through-time linter-write-good hey-pane
apm install markdown-preview-plus pdf-view preview-inline
apm install vim-mode script hydrogen r-exec
apm install nord-atom-ui nord-atom-syntax

## packages to add some extra functionality to the minimap
apm install minimap minimap-highlight-selected minimap-find-and-replace
apm install minimap-cursorline minimap-git-diff minimap-pigments

## support tools for languages, linters, autocompletion, Juno IDE
apm install language-r language-julia language-scala language-lua
apm install language-markdown language-latex latex-autocomplete
apm install autocomplete-clang autocomplete-python autocomplete-r
apm install linter-clang linter-pylint linter-lintr linter-lua
apm install gpp-compiler

## auto-install on macOS; manually install for Linux machines if desired
if [ `uname` == "Darwin" ]; then
  apm install atom-beautify
  apm install atomify
fi

## the Juno IDE for the Julia language
if [[ `julia -v` ]]; then
  apm install uber-juno
else
  :
fi
