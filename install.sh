#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]} ")" && pwd )"

MAJOR=1
MINOR=0
PATCH=0
VERSION="$MAJOR.$MINOR.$PATCH"

NAME="wired-ieee"
NAMESPACE="local"

if [ ! -z "$XDG_DATA_HOME" ]; then
    DIR="$XDG_DATA_HOME"
else
    DIR="$HOME/.local/share"
fi

DIR="$DIR/typst/packages/$NAMESPACE/$NAME/$VERSION"
mkdir -p "$DIR"

FILES="./lib.typ ./typst.toml ./template"

for f in $FILES; do
    ln -sf "$SCRIPT_DIR/$f" "$DIR"
done

echo "Import your package with #import \"@$NAMESPACE/$NAME:$VERSION\": *"
echo "Or use the template with typst init @$NAMESPACE/$NAME:$VERSION"
