#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# powerline
PYTHON_SITE_PATH=$(python -c 'import sys;print(sys.path.pop())')
source "$PYTHON_SITE_PATH/powerline/bindings/bash/powerline.sh"

# common alias
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -lh'
alias la='ls -alh'
alias '..'='cd ..'
alias '~'='cd ~'
alias pq='proxychains -q'
alias qwq='uname -snrm && uptime'
alias cman='env LANG=zh_CN.UTF-8 man'
alias clip='xclip -selection clipboard'
