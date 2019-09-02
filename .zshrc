# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOQUIT=true
export GITHUB_USER="%GIT_USER%"
export GITHUB_PASSWORD="%GIT_PASSWORD%"
source $HOME/antigen.zsh
if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
      FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi

antigen use oh-my-zsh
antigen bundle tmux
antigen bundle git
antigen bundle command-not-found
antigen bundle common-aliases # Common aliases like ll and la
antigen bundle djui/alias-tips
antigen bundle arialdomartini/oh-my-git
antigen bundle docker
antigen bundle docker-machine
antigen bundle docker-compose
antigen bundle npm
antigen bundle go
antigen bundle golang
antigen bundle osx
antigen bundle node
antigen bundle terraform
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle colorize
antigen bundle thefuck
antigen bundle mix
antigen bundle aws
antigen bundle cargo
antigen bundle rust
antigen bundle themes
antigen bundle lein
antigen bundle lol
antigen bundle history
antigen bundle encode64
antigen bundle emoji
antigen bundle emoji-clock
antigen bundle catimg
# antigen theme romkatv/powerlevel10k powerlevel10k
antigen bundle hschne/fzf-git
antigen bundle mgryszko/jvm
antigen bundle robertzk/send.zsh
# antigen theme petermbenjamin/purity
antigen theme MaethorNaur/purify-zsh
antigen apply
unalias cp
POWERLEVEL9K_MODE='nerdfont-complete'
[[ $TERM == xterm* ]] || : ${PURE_POWER_MODE:=portable}
PURE_POWER_USE_P10K_EXTENSIONS=-1
source ~/.purepower
setopt correct

export GOPATH=$HOME/go
export PATH="$PATH:$HOME/Documents/gatling/bin"
export JAVA_HOME="$(/usr/libexec/java_home -v 10)"

alias ls='exa'
export EDITOR=/usr/local/bin/vim
export PAGER=/usr/local/bin/bat
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/flutter/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export GITHUB_TOKEN="%GIT_PASSWORD%"
export FZF_CTRL_T_OPTS="--preview 'bat --color always {}'"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
eval "$(hub alias -s)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export POWERLINE_CONFIG_COMMAND="/usr/local/bin/powerline-config"
. /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
