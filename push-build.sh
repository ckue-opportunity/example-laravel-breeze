#!/bin/bash

# PRECONDITION: RUN THIS SCRIPT IN LARAVEL DOCUMENT ROOT.
echo "Build vite manifest and push data to GitHub.";

# Delete existing build_ folder, generate vite manifest and copy the generated build into build_
rm -R public/build_
npm run build
cp -R public/build public/build_
