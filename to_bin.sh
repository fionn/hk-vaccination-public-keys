#!/bin/bash

for file in keys/*.pub.b64; do
    target=keys/"$(basename "$file" .b64).bin"
    if [ ! -f "$target" ]; then
        echo "Decoding $file"
        base64 -d "$file" > "$target"
    fi
done
