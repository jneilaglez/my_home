#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ -f ~/.bashrc_lib ]] && source ~/.bashrc_lib
[[ -f ~/.bashrc_colors ]] && source ~/.bashrc_colors
[[ $- != *i* ]] && return

# virtualenv variable
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias vi='vim'
alias ll='ls -lart'
alias docker-show-repo='bash ~/.docker-show-repo'
alias pip-upgrade='pip list -o --format=freeze | cut -d'=' -f1 | xargs sudo pip install --upgrade'
PS1='\n$(validate_last_command)                       '$EMR'▲\n\[$(git_color)\]┌# '$EMY'\D{%d/%m/%Y %H:%M:%S}'$NONE' '$EMB'▲'$EMG' ▲ '$G'[\w] '$NONE' \n\[$(git_color)\]└$(is_git)—————> '$EMM'\$ '$NONE''
#export PS1='xexu@'$EMB'\h:\W $ '

