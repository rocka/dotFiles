#!/usr/bin/fish

alias ls="ls --color=auto --indicator-style=classify --time-style=long-iso"
alias l="ls"
alias ll="ls -lh"
alias la="ls -alh"
alias pq="proxychains -q"
alias qwq="uname -snrm; uptime"
alias cman="env LANG=zh_CN.UTF-8 man"
alias clip="xclip -selection clipboard"

alias ...="popd"

function mkws
    set DIR (date +%Y-%m-%d_$argv[1])
    mkdir -p ~/Workspace/$DIR
    pushd ~/Workspace/$DIR
end
