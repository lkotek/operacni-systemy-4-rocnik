#!/bin/bash

cd $(dirname $1)
FNAME=$(basename $1)

asciidoctor -b html5 -d book "$FNAME"
asciidoctor -b docbook -d book "$FNAME"

# Nutne prerekvizity:
# gem install coderay pygments.rb
# gem install --pre asciidoctor-pdf

asciidoctor -r asciidoctor-pdf -b pdf "$FNAME"
