export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOQUIT=true
export ZSH_TMUX_UNICODE=true

export PAGER=/usr/local/bin/bat
export EDITOR=/usr/local/bin/nvim
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist noma' -\""

if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
      export FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi


export GOPATH=$HOME/go

export PATH="$PATH:$HOME/Documents/gatling/bin"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/flutter/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
export BAT_THEME="gruvbox-light"
export FZF_DEFAULT_COMMAND="$RG_PREFIX"

export FZF_CTRL_T_OPTS="--preview 'bat --color always {}'"
export FZF_TMUX=1

export ANDROID_HOME="$HOME/Library/Android/sdk"
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
export INSERT_MODE_INDICATOR="%{$FX[bold]$FG[001]%}INSERT%{$FX[reset]%}"
export TERM=alacritty
