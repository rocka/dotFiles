#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# powerline
source /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# common alias
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lh'
alias la='ls -alh'
alias '..'='cd ..'
alias '~'='cd ~'
alias pq='proxychains -q'
alias qwq='uname -snrm && uptime'
alias cman='env LANG=zh_CN.UTF-8 man'
alias clip='xclip -selection clipboard'

