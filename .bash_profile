test -r ~/.bashrc && . ~/.bashrc

export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$PATH:$HOME/.nodebrew/current/bin
export PATH=$(stack path --local-bin):$PATH
export PATH="$PATH:`pwd`/flutter/bin"

exec fish
