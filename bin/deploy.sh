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

# strange but fonts was not copied
cp -f $(bundle show font-awesome-sass)/assets/fonts/font-awesome/* _site/assets/fonts/

find _site -type f -iname '*js' -exec zopfli -i1000 {} \;
find _site -type f -iname '*js' -exec brotli -9 -k -f {} \;

find _site -type f -iname '*css' -exec zopfli -i1000 {} \;
find _site -type f -iname '*css' -exec brotli -9 -k -f {} \;

find _site -type f -iname '*svg' -exec zopfli -i1000 {} \;
find _site -type f -iname '*svg' -exec brotli -9 -k -f {} \;

cp -f _site/img/favicon.ico _site/favicon.ico
cp -f _site/img/browserconfig.xml _site/browserconfig.xml
octopod deploy
