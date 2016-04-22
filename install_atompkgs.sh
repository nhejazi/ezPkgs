#!/usr/bin/bash

apm install an-old-hope-syntax ask-stack atom-macros atomatigit latex git-plus autocomplete-python

apm install color-picker env-from-shell file-icons highlight-selected latex-completions hydrogen

apm install latexer merge-conflicts language-diff language-julia language-latex language-lua minimap

apm install language-r language-scala linter linter-lintr linter-pylint linter-lua linter-markdown

apm install minimap-find-and-replace minimap-git-diff minimap-highlight-selected minimap-pigments

apm install octocat-syntax open-github-from-npm pigments project-manager remote-edit script vim-mode

# install testing stuff on Mac OS X only
if [ `uname` == 'Darwin' ]; then
  apm install r-exec activate-power-mode travis-ci-status
  apm install ink julia-ide julia-client jude  #JuliaIDE support in Atom
fi
