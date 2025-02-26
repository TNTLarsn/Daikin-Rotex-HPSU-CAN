#!/bin/bash
echo "path of bash script: `pwd`"
cp .github/workflows/resources/external_components_dev.yaml .
sed -i 's/!/?/g' full_de.yaml # make yaml pyyaml conform for cels
cels patch full_de.yaml external_components_dev.yaml > full_patched.yaml
cat full_patched.yaml > full_de.yaml
sed -i 's/?/!/g' full_de.yaml # make yaml esphome conform
