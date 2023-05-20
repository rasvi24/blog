#!/bin/bash

JEKYLL_ENV=production jekyll build
cd blog.rasvi.io
shopt -s extglob
rm -r !(CNAME|.*)
cd ..
cp -r _site/* blog.rasvi.io/