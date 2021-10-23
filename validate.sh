#!/bin/bash

set -euo pipefail

for file in keys/*.pub.bin; do
    echo "$file:"
    openssl asn1parse -inform DER -in "$file"
done
