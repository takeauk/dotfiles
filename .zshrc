export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
eval $(/usr/libexec/path_helper -s)

autoload -Uz compinit; compinit
zstyle ':completion:*' completer _complete _approximate
zstyle ':completion:*' mather-list 'm:{a-z}={A-Z}'

PROMPT="
%F{cyan}[%~]%f %1(v|%F{green}%1v%f|)
%(?.%F{yellow}%}.%F{magenta})%n@%m%f $ "

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[p" history-beginning-search-backward-end
bindkey "^[n" history-beginning-search-forward-end

setopt auto_pushd

function chpwd() {
  if [ `ls -Al | wc -l` -eq 0 ]; then
    echo "\n\nempty directory";
  else
    echo "\n"
    ls
  fi
}
