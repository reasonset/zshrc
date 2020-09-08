# -*- mode: zsh; -*-
# vi: set ft=zsh

####### VI mode setting #######
setopt vi
KEYTIMEOUT=1
###############################

# Always use menu.
zstyle ':completion:*' menu yes select

# Menu for full path.
setopt GLOB_COMPLETE

####################################
#    inclimental history search    #
####################################

autoload -U history-search
bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward
bindkey "\e[5~" history-beginning-search-backward
bindkey "\e[6~" history-beginning-search-forward
bindkey -M viins "\e[5~" history-beginning-search-backward
bindkey -M viins "\e[6~" history-beginning-search-forward
bindkey -M vicmd "\e[5~" history-beginning-search-backward
bindkey -M vicmd "\e[6~" history-beginning-search-forward
