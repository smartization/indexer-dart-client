#!/bin/bash
set -exo pipefail

echo "api specification url: $1"

docker run \
        --rm \
        -v ${PWD}:/local \
        --network "host" \
        swaggerapi/swagger-codegen-cli-v3 generate \
          -i $1 \
          -l dart \
          -o /local \
          --git-repo-id indexer-dart-client \
          --git-user-id smartization \
          -c /local/config.json
