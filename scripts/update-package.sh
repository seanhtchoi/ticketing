#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace # For debugging

echo "update-package.sh is started..." && \

# https://nodejs.dev/learn/update-all-the-nodejs-dependencies-to-their-latest-version
npm install -g npm-check-updates

cd ./auth && ncu -u && npm update && \
cd ../client && ncu -u && npm update && \
cd ../common && ncu -u && npm update && \
cd ../expiration && ncu -u && npm update && \
cd ../nats-test && ncu -u && npm update && \
cd ../orders && ncu -u && npm update && \
cd ../payments && ncu -u && npm update && \
cd ../tickets && ncu -u && npm update && \

# cookie-session
cd ../auth && npm install cookie-session@1.4.0 && \
cd ../common && npm install cookie-session@1.4.0 && \
cd ../orders && npm install cookie-session@1.4.0 && \
cd ../payments && npm install cookie-session@1.4.0 && \
cd ../tickets && npm install cookie-session@1.4.0 && \

echo "update-package.sh is finished..."
