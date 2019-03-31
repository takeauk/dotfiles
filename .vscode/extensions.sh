#!/bin/bash

pkglist=(
    ms-vscode.csharp
    ms-vscode.cpptools
    zhuangtongfa.material-theme
    vscodevim.vim
    vscode-icons-team.vscode-icons
    eamodio.gitlens
    streetsidesoftware.code-spell-checker
    alefragnani.bookmarks
    coenraads.bracket-pair-colorizer-2
    jbenden.c-cpp-flylint
    austin.code-gnu-global
    donjayamanne.githistory
    s-nlf-fh.glassit
    emilast.logfilehighlighter
    ibm.output-colorizer
    ionutvmi.path-autocomplete
    jebbs.plantuml
    qhoekman.language-plantuml
    mechatroner.rainbow-csv
    wayou.vscode-todo-highlight
    shardulm94.trailing-spaces
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
