####POWERLEVEL9K theme setup
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs ssh time)
####


plugins=(git sublime zsh-autosuggestions)
##### Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
#

####Aliases

alias ping="ping -i 0.1 "
alias ssh='ssh -A '
alias s='ssh -A '
alias gca="git add *; git commit -am "
alias gcf="git add *; git commit -a; gp -f"
alias gp="git push"
alias gd="git diff"
alias grep="grep -R"
alias g="cd ~/git_code"
alias G="git grep"
alias wo="workon "
alias pr='git pull; hub pull-request | pbcopy'
export PATH="$PATH:$HOME/.rvm/bin:$HOME/google-cloud-sdk/bin/" # Add RVM to PATH for scripting
#fip () { ndbc device find ipaddress:"$@"}
#fasn () { ndbc device find asn:"$@"}


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


