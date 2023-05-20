#!/bin/bash

jekyll build
cd blog.rasvi.io
shopt -s extglob
rm -r !(CNAME|.*)
cd ..
cp -r _site/* blog.rasvi.io/