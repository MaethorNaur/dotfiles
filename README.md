# dotfiles

```
brew bundle
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
wget -O /usr/local/bin/imgcat https://iterm2.com/utilities/imgcat
_ chmod a+x /usr/local/bin/imgcat
pip3 install powerline-status
curl https://raw.githubusercontent.com/kyoz/purify/master/zsh/purify.zsh-theme --ouput $ZSH/themes/purify.zsh-theme
```

```bash
brew bundle
```

```bash
rustup component add rust-analysis rust-src clippy rustfmt
rustup target add x86_64-pc-windows-msvc
rustup target add x86_64-unknown-linux-musl
ln -s /usr/local/opt/llvm/bin/lld-link /usr/local/bin/link.exe
ln -s /usr/local/bin/x86_64-linux-musl-gcc /usr/local/bin/musl-gcc
```

```bash
go get -u github.com/sourcegraph/go-langserver
go get -u github.com/mattn/efm-langserver/cmd/efm-langserver
pip3 install vim-vint
yarn global add dockerfile-language-server-nodejs bash-language-server markdownlint-cli remark remark-cli remark-stringify prettier
```

```
:CocInstall coc-rls coc-json coc-yaml coc-emmet coc-neosnippet coc-java coc-gocode coc-css coc-word coc-html
```
