#/bin/bash

asciidoctor -b html5 -d book $1
asciidoctor -b docbook -d book $1

# Nutne prerekvizity:
# gem install coderay pygments.rb
# gem install --pre asciidoctor-pdf

asciidoctor -r asciidoctor-pdf -b pdf $1
