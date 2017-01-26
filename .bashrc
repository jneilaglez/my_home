#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ -f ~/.bashrc_lib ]] && source ~/.bashrc_lib
[[ -f ~/.bashrc_colors ]] && source ~/.bashrc_colors
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias vi='vim'
alias ll='ls -lart'
alias docker-show-repo='bash ~/.docker-show-repo'
alias git-log-graph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

PS1='\n                        '$EMR'▲\n\[$(git_color)\]┌# '$EMY'\D{%d/%m/%Y %H:%M:%S}'$NONE' '$EMB'▲'$EMG' ▲ '$G'[\w] '$NONE' \n\[$(git_color)\]└$(is_git)—————> '$EMM'\$ '$NONE''
#export PS1='xexu@'$EMB'\h:\W $ '

