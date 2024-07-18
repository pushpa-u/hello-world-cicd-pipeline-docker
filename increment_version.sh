#!/bin/bash

VERSION_FILE=VERSION

if [ ! -f "$VERSION_FILE" ]; then
  echo "0" > $VERSION_FILE
fi

current_version=$(cat $VERSION_FILE)
new_version=$((current_version + 1))
echo $new_version > $VERSION_FILE

echo "Current version: $current_version"
echo "New version: $new_version"

# Output the new version to be used in GitHub Actions
echo "::set-output name=new_version::$new_version"
