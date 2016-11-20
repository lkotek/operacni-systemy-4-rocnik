#!/bin/bash

find . -mindepth 2 -type f -name "*.adoc" -print -exec ./make.sh {} \;
