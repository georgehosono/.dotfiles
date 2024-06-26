# set vim as the default editor
export EDITOR=vim

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' format 'completing %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/artagan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep
unsetopt extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word

# This enables fzf completions and shortcuts
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# these are my custom aliases
source ~/.zsh_my_aliases

# these are my custom keybindings
source ~/.zsh_my_keybindings

source ~/.export-esp.sh

# this enables miniconda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# the adds a local bin directory to PATH
export PATH="$PATH:$HOME/bin"

# pip wants to install stuff here
export PATH="$PATH:$HOME/.local/bin"

# this helps with CS 240LX stuff
export CS240LX_2022_PATH=$HOME/Desktop/cs240lx
export PATH="$PATH:$CS240LX_2022_PATH/bin"

# Adds cargo stuff to PATH
export PATH="$PATH:$HOME/.cargo/bin"

# Adds Haskell stuff to PATH
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# Adds color to man pages
# export MANPAGER="less -R --use-color -Dd+g -Du+b"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
