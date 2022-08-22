#!/bin/bash

# PRECONDITION: RUN THIS SCRIPT IN LARAVEL DOCUMENT ROOT.
echo "Create public build and commit all changes to Git.";

# Delete existing build_ folder, generate vite manifest and copy the generated build into build_
rm -R public/build_
npm run build
cp -R public/build public/build_

# Git: Add and commit all changes
git add -A
git commit -m "update after npm run build"

