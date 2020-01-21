. ~/.zsh/github.zsh
. ~/.zsh/env.zsh
source $HOME/antigen.zsh

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
antigen bundle hschne/fzf-git
antigen bundle mgryszko/jvm
antigen bundle robertzk/send.zsh
antigen theme denysdovhan/spaceship-prompt
antigen apply
unalias cp
setopt correct
jvm use 1.8

alias ls='exa'
eval "$(hub alias -s)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
. /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
