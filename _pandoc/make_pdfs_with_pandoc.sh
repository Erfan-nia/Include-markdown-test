#!/bin/bash
#
# Create pdfs from markdown files using pandoc

dir_A="../site_A"
dir_B="../site_B"
resource_path="../common"
meta_A="metadata_site_A.yml"
meta_B="metadata_site_B.yml"

# create site-A pdf with common files
pandoc --metadata-file=${meta_A} \
    --resource-path="${resource_path}:${dir_A}/docs" \
    "${dir_A}/docs/index.md" \
    ../common/common.md \
    -o site_A.pdf

# create site-B pdf with common files
pandoc --metadata-file=${meta_B} \
    --resource-path="${resource_path}:${dir_B}/docs" \
    "${dir_B}/docs/index.md" \
    ../common/common.md \
    -o site_B.pdf
