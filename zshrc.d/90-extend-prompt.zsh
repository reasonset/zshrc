# -*- mode: zsh; -*-
# vi: set ft=zsh

if [[ -n $_ZSH_PROMPT && -f ${ZDORDIR:-$HOME}/.zsh.extend.d/$_ZSH_PROMPT ]]
then
  source ${ZDORDIR:-$HOME}/.zsh.extend.d/$_ZSH_PROMPT
else
  if [[ -f $_ZSH_CONFIG_P10K ]]
  then
    prompt off
    source $_ZSH_CONFIG_P10K
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

    # If start shell on Mercurial repository, activate Mercurial plugin.
    if hg status 2> /dev/null > /dev/null
    then
      typeset -g POWERLEVEL9K_VCS_BACKENDS=(hg git)
    fi
  fi
fi