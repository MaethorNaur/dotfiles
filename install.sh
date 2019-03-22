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

/usr/local/opt/gnu-sed/libexec/gnubin/sed
