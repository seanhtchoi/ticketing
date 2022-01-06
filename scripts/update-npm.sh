#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace # For debugging

echo "update-npm.sh is started..." && \

# https://docs.npmjs.com/try-the-latest-stable-version-of-npm
npm -v && \
npm install -g npm@latest && \
npm -v && \

echo "update-npm.sh is finished..."
