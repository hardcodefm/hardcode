#!/bin/bash
set -euxo pipefail

JEKYLL_ENV=production octopod build
find _site -type f -iname '*js' -exec gzip -9 -k -f {} \;
find _site -type f -iname '*css' -exec gzip -9 -k -f {} \;
find _site -type f -iname '*svg' -exec gzip -9 -k -f {} \;
octopod deploy
