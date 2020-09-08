# -*- mode: zsh; -*-
# vi: set ft=zsh

if (( ${#_ZSH_CONFIG_PLUGINS} > 0 ))
then
  for i in "${_ZSH_CONFIG_PLUGINS[@]}"
  do
    source "$i"
  done  
fi