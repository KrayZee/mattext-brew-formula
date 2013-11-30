#!/usr/bin/env sh
pushd `brew --prefix`/Library/Formula >/dev/null 2>&1
curl -O https://raw.github.com/KrayZee/mattext-brew-formula/master/mattext.rb
popd >/dev/null 2>&1