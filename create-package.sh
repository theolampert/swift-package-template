#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 package_name"
  exit 1
fi

PACKAGE_NAME=$1

SWIFTLINT_URL="https://raw.githubusercontent.com/theolampert/swift-package-template/main/.swiftlint.yml"
SWIFTFORMAT_URL="https://raw.githubusercontent.com/theolampert/swift-package-template/main/.swiftformat"

mkdir "$PACKAGE_NAME"
cd "$PACKAGE_NAME" || exit

swift package init --type library --name "$PACKAGE_NAME"

curl -O "$SWIFTLINT_URL"
curl -O "$SWIFTFORMAT_URL"

echo "Swift package $PACKAGE_NAME created."
