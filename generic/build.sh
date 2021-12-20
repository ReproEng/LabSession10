#!/bin/bash

# Read in project-specific packages and additions to Dockerfile
export META_PACKAGES="$(< project/packages)"
export META_APPEND="$(< project/Dockerfile-append)"

echo $META_PACKAGES
echo "\n"
echo $META_APPEND

# Add project-specific packages and additions to Dockerfile
envsubst < "Dockerfile_generic" > "Dockerfile"

# Move project-specific artefacts and generated Dockefile to output
cp Dockerfile output
cp -r project/files/* output
