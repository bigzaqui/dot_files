# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
pyenv virtualenvwrapper_lazy #wrapper to use mkvirtualenv and workon

plugins=(
	git
	sublime
	virtualenv
)

####theme setup
ZSH_THEME="powerlevel10k/powerlevel10k"


##### Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
#

####Aliases


alias rc="subl ~/.zshrc"
alias ping="ping -i 0.1 "
alias ssh='ssh -A '
alias s='ssh -A '
alias gca="git add *; git commit -am "
alias gcf="git add *; git commit -a; gp -f"
alias gp="git push"
alias gd="git diff"
# alias grep="grep -R"
alias g="cd ~/git_code"
alias G="git grep"
alias wo="workon "
alias pr='git pull; hub pull-request | pbcopy'


########hh config
export HH_CONFIG=hicolor,rawhistory        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)


#remove hostname and username from
prompt_context() {}

###save history forever
# add this configuration to ~/.zshrc
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
