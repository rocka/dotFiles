#!/usr/bin/fish

# bobthefish theme configuration
set -g theme_date_format "+%F %a %T"
#set -g theme_date_timezone Asia/Shanghai

# restore the old ^C behavior
bind ctrl-c cancel-commandline

alias ls="ls --color --classify --time-style=long-iso"
alias l="ls"
alias ll="ls -lh"
alias la="ls -alh"
alias ip="ip --color=auto"
alias pq="proxychains -q"
alias qwq="uname -snrm; uptime"
alias cman="env LANG=zh_CN.UTF-8 man"
alias clip="xclip -selection clipboard"
alias tree="tree -C"

alias ...="popd"

function mkws
    set DIR (date +%Y-%m-%d_$argv[1])
    mkdir -p ~/Workspace/$DIR
    pushd ~/Workspace/$DIR
end
