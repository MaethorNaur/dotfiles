. ~/.zsh/github.zsh
. ~/.zsh/env.zsh
source $HOME/antigen.zsh

antigen use oh-my-zsh
antigen bundle b4b4r07/zsh-vimode-visual
antigen bundle Nyquase/vi-mode
antigen bundle tmux
antigen bundle git
antigen bundle command-not-found
antigen bundle common-aliases # Common aliases like ll and la
antigen bundle djui/alias-tips
antigen bundle docker
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
antigen bundle MikeDacre/tmux-zsh-vim-titles
antigen apply
unalias cp
setopt correct
jvm use 1.8

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  aws           # Amazon Web Services section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_EXIT_CODE_SHOW=true

alias ls='exa'
eval "$(hub alias -s)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
eval "$(starship init zsh)"
alias grep="rg"
