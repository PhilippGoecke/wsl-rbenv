#!/bin/bash

git clone https://github.com/rbenv/rbenv.git "$HOME/.rbenv" --depth 1
rbenvpath="$HOME/.rbenv/shims:$HOME/.rbenv/bin"
echo "export PATH=\"$rbenvpath:\$PATH\"" >> ~/.bashrc
export PATH="$rbenvpath:$PATH"
rbenv init

mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build --depth 1

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

rbenv install -l
rbenv install 3.1.0
rbenv install -L
