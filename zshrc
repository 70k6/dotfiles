source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
setopt CORRECT
setopt AUTO_PUSHD
setopt AUTO_NAME_DIRS
setopt PUSHD_MINUS
setopt PUSHD_TO_HOME
setopt PUSHD_IGNORE_DUPS
setopt ZLE
setopt NO_HUP
setopt share_history

autoload -U promptinit
promptinit
prompt adam2 red

# Show which repo/branch we are in
function precmd() {
    if [ -d .git ]; then
      RPROMPT='%F{red}(repo: git, branch:'
      RPROMPT=$RPROMPT' '`git symbolic-ref HEAD 2> /dev/null | cut -b 12-`')'
    elif [ -d .hg ]; then
      RPROMPT='%F{red}(repo: hg)'
    else
      RPROMPT=''
    fi;

}
function title() {
  # escape '%' chars in $1, make nonprintables visible
  a=${(V)1//\%/\%\%}

  # Truncate command, and join lines.
  a=$(print -Pn "%40>...>$a" | tr -d "\n")

  case $TERM in
  screen)
    print -Pn "\ek$a:$3\e\\" # screen title (in ^A")
    ;;
  xterm*|rxvt|ansi)
    print -Pn "\e]1;$2 | $a:$3\a" # plain xterm title
    print -Pn "\e]2;$2 | $a:$3\a" # tab title
    ;;
  esac
}

function preexec() {
  title "$1" "$USER@%m" "%35<...<%~"
}

###########
setopt automenu
setopt autolist
setopt complete_in_word
setopt always_to_end
setopt menucomplete
setopt listpacked
setopt globdots
setopt extendedglob
setopt markdirs
setopt nomatch
setopt numeric_glob_sort
setopt rc_quotes
setopt rec_exact
unsetopt autoparamslash

autoload -Uz compinit && compinit -i

zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

###########
alias grep="grep -n --color"
alias ls='ls -G'

alias chrome="open /Applications/Google\ Chrome.app"
alias do="ssh root@172.105.212.117"
alias python=python3


export GOPATH='/Users/70k/go'


export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

export http_proxy='http://127.0.0.1:1087'
export https_proxy='http://127.0.0.1:1087'

