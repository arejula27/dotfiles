# Lines configured by zsh-newuser-install
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arejula27/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


export TERM=xterm

# alias
alias ls='ls --color=auto'
alias ls='lsd'
alias ll='ls -alF' 
alias la='ls -A' 
alias l='ls -CF' 
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vim=nvim
alias cat=bat

export EDITOR='nvim'

#Prompt
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch') '
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst
export XDG_CONFIG_HOME=~/.config/

PROMPT='%(?.%F{green}➜ .%F{red}➜ )%f %B%F{cyan}%1~%f%b %B%F{219}$(git_branch_name)%f%b%# '
RPROMPT="%T"


#Allow history
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

#Kubbernetes
 alias k=kubectl 
 [[ /usr/sbin/kubectl ]] && source <(kubectl completion zsh)

#Go
GOPATH=$HOME/go
GOROOT=$HOME/go
export PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:~/.cache/rebar3/bin
 [[ ~/go/bin/go-blueprint ]] && source <(go-blueprint completion zsh)

#LuaLsp
PATH=$PATH:/home/arejula27/.lua-lsp/bin


source <(devbox completion zsh); compdef _devbox devbox

