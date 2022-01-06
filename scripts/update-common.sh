#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace # For debugging

echo "update-common.sh is started..." && \

cd ./common && npm run pub && \

cd ../auth && npm install @scticketing/common && \
cd ../client && npm install @scticketing/common && \
cd ../common && npm install @scticketing/common && \
cd ../expiration && npm install @scticketing/common && \
cd ../nats-test && npm install @scticketing/common && \
cd ../orders && npm install @scticketing/common && \
cd ../payments && npm install @scticketing/common && \
cd ../tickets && npm install @scticketing/common && \

echo "update-common.sh is finished..."
