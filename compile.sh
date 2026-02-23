#!/bin/bash

WORD_COUNT=$(sed -n '/<!-- START_WORD_COUNT -->/,/<!-- END_WORD_COUNT -->/p' IWA.md | sed 's/<!--.*-->//' | wc -w | tr -d ' ')

sed "s/\[Insert Word Count Here\]/$WORD_COUNT/" IWA.md > IWA_temp.md
pandoc IWA_temp.md -o IWA.pdf --pdf-engine=xelatex
rm IWA_temp.md

echo "Word count: $WORD_COUNT"
