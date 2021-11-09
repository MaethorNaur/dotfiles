go get -u github.com/arl/gitmux
sudo tic -x tmux-256color.terminfo
sudo tic -x terminfo.src
tic -x extra/alacritty.info
infocmp -x alacritty-direct

git config --global color.ui true
git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"
git config --global core.pager=diff-so-fancy | less --tabs=4 -RFX
git config --global mergetool.fugitive.cmd=nvim -f -c "Gvdiffsplit!" "$MERGED"
git config --global merge.tool=fugitive

