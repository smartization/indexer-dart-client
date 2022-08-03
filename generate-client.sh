#!/bin/bash
# set -exo pipefail

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
          -c /local/config.json \
          -DbrowserClient=false

echo "Adding language version 2.9 to all files"

for FILE in $(find . -name '*.dart'); do
  # check if file begins with version annotation
  if [[ $(sed -n '/^\/\/ @dart=2.9/p;q' $FILE) ]]; then
    # begins
    echo "$FILE already contains proper dart version annotation"
  else
    # does not begins
    echo "$FILE does not contains proper dart version annotation, adding it"
    echo -e "// @dart=2.9\n$(cat $FILE)" > $FILE
  fi
done