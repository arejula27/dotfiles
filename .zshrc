# Lines configured by zsh-newuser-install
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arejula27/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#keybindings



# alias
alias ls='ls --color=auto'
     #alias dir='dir --color=auto'
     #alias vdir='vdir --color=auto'
 
     alias grep='grep --color=auto'
     alias fgrep='fgrep --color=auto'
     alias egrep='egrep --color=auto'

#some more ls aliases 
   alias ls='lsd'
   alias ll='ls -alF' 
   alias la='ls -A' 
   alias l='ls -CF' 
   alias goTercero='cd ~/Documentos/Universidad/tercero' 
   alias vim=nvim
  # alias vim=lvim
   alias cat=bat
   alias icat="kitty icat"
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

# My custom prompt is deprecated now use starship
#PROMPT='%(?.%F{green}➜ .%F{red}➜ )%f %B%F{cyan}%1~%f%b %B%F{219}$(git_branch_name)%f%b%# '
#RPROMPT="%T"
eval "$(starship init zsh)"
#Allow history
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

#


#Kubbernetes
 alias k=kubectl 
 [[ /usr/sbin/kubectl ]] && source <(kubectl completion zsh)

#Go
GOPATH=$HOME/go
GOROOT=$HOME/go
export PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export TERM=xterm
export PATH=$PATH:~/.cache/rebar3/bin
 [[ ~/go/bin/go-blueprint ]] && source <(go-blueprint completion zsh)

#Android
export ANDROID_HOME=/home/arejula27/Android/Sdk
PATH=$PATH:/home/arejula27/android-studio/bin
PATH=$PATH:/home/arejula27/bin/flutter/bin
PATH=$PATH:$ANDROID_HOME/platform-tools/

#LunarVim
PATH=$PATH:/home/arejula27/.local/bin
export EDITOR='nvim'
#LuaLsp
PATH=$PATH:/home/arejula27/.lua-lsp/bin

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"

# Kerberos
export KRB5_CONFIG=$HOME/.ssh/krb5.config
export KRB5CCNAME=$HOME/.ssh/krb5cc


source <(devbox completion zsh); compdef _devbox devbox

# bun completions
[ -s "/home/arejula27/.bun/_bun" ] && source "/home/arejula27/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
