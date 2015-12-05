#!/usr/bin/env bash
set -e
pushd ~
sudo dnf install gcc texlive-luatex texlive-lualibs texlive-ebgaramond flex bison libxml2-devel libtool-ltdl-devel autoconf m4 automake fontforge
mkluatexfontdb
wget 'https://github.com/gregorio-project/gregorio/releases/download/v3.0.3/gregorio-3.0.3.tar.gz'
gunzip gregorio-*.gz
tar xvf gregorio-*.tar
pushd gregorio-*
./build.sh && sudo ./install.sh
popd
popd
exit 0;
