#!/bin/bash
set -e
echo "Detecting if brew"

if ! [ -x $(command -v brew) ]; then
  echo "Installing brew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Brew already installed"
fi

echo "Installing brews"
brew bundle

echo "Setting ZSH"

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
curl -L git.io/antigen > ~/antigen.zsh
echo "Detecting rust"
if ! [ -x $(command -v rustup) ]; then
  echo "Installing brew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Brew already installed"
fi

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

rustup component add rust-analysis rust-src clippy rustfmt

rustup target add x86_64-pc-windows-msvc x86_64-unknown-linux-musl aarch64-apple-ios x86_64-apple-ios

cargo install lipo

ln -s /usr/local/bin/x86_64-linux-musl-gcc /usr/local/bin/musl-gcc

cp -rvf .cargo ~/

wget -O /usr/local/bin/imgcat https://iterm2.com/utilities/imgcat
sudo chmod a+x /usr/local/bin/imgcat
pip3 install powerline-status

go get -u github.com/sourcegraph/go-langserver
go get -u github.com/mattn/efm-langserver/cmd/efm-langserver
pip3 install vim-vint

# yarn global add bash-language-server
yarn global add dockerfile-language-server-nodejs markdownlint-cli remark remark-cli remark-stringify prettier

cp .zprofile .zshrc .purepower .tmux.conf ~/
cp -rvf .config/* ~/.config/

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

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
