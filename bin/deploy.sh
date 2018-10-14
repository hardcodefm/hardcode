#!/bin/bash
set -euxo pipefail

checkinstall() {
    if test ! $(which $1); then
        if test ! $(which brew); then
            echo "$1 not installed"
            exit 1
        fi
        brew install $1
    fi
}

checkinstall zopfli
checkinstall brotli

JEKYLL_ENV=production octopod build
find _site -type f -iname '*js' -exec zopfli -i1000 {} \;
find _site -type f -iname '*js' -exec brotli -9 -k -f {} \;

find _site -type f -iname '*css' -exec zopfli -i1000 {} \;
find _site -type f -iname '*css' -exec brotli -9 -k -f {} \;

find _site -type f -iname '*svg' -exec zopfli -i1000 {} \;
find _site -type f -iname '*svg' -exec brotli -9 -k -f {} \;

#octopod deploy
