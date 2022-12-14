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
  if [[ $(sed -n '/^\/\/ @dart=2.9/p;q' $FILE) ]] || [[ $FILE == ./lib/extensions/json_date_time.dart ]]; then
    # begins
    echo "$FILE already contains proper dart version annotation"
  else
    # does not begins
    echo "$FILE does not contains proper dart version annotation, adding it"
    sed -i '1 i\// @dart=2.9' $FILE
  fi
done

# swap all DateTime to JsonDateTime
for FILE in $(find . -name '*.dart'); do
  if [[ $FILE == ./lib/extensions/json_date_time.dart ]]; then
    continue
  fi
  sed -i "s/DateTime/JsonDateTime/g" $FILE
done

# add import of JsonDateTime
if [[ $(sed -n "/^import \'extensions\/json\_date\_time\.dart\';/p;q" ./lib/api.dart) ]]; then
  # contains import
  echo "./lib/api.dart already contains proper JsonDateTime import"
else
  # does not contains
  echo "./lib/api.dart does not contains proper JsonDateTime import, adding it"
  sed -i "3 i\import 'extensions/json_date_time.dart';" ./lib/api.dart
fi

echo "Adding sdk version to pubspec.yaml"
echo -e "environment:\n  sdk: \">=2.17.5 <3.0.0\"" >> pubspec.yaml