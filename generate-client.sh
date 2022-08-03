#!/bin/bash
# set -exo pipefail

# increment version by one subversion
major_version=$(cat config.json | grep 1 | cut -d : -f 2 | tr -d \" | tr -d \, | tr -d \ | cut -d \. -f 1)
minor_version=$(cat config.json | grep 1 | cut -d : -f 2 | tr -d \" | tr -d \, | cut -d \. -f 2)
sub_version=$(cat config.json | grep 1 | cut -d : -f 2 | tr -d \" | tr -d \, | cut -d \. -f 3)
echo "Current version: "
echo "Major version: $major_version"
echo "Minor version: $minor_version"
echo "Subversion: $sub_version"
echo -e "\n"
echo "New version: "
echo "Major version: $major_version"
echo "Minor version: $minor_version"
echo "Subversion: $(( sub_version + 1 ))"

sed -i "s/$major_version.$minor_version.$sub_version/$major_version.$minor_version.$(( sub_version + 1 ))/g" config.json

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

echo "Adding sdk version to pubspec.yaml"
echo -e "environment:\n\tsdk: \">=2.17.5 <3.0.0\"" >> pubspec.yaml