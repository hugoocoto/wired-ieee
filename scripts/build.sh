#!/bin/bash
set -e

# funny animation tho
find example -type f -name "*.typ" ! -name "lib.typ*" | while read -r typ_file; do
    echo -en "  typst compile $typ_file \033[J\r"
    typst compile "$typ_file"
done

echo -e "Done\033[J"
