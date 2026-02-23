#!/bin/bash

WORD_COUNT=$(sed -n '/<!-- START_WORD_COUNT -->/,/<!-- END_WORD_COUNT -->/p' IRR.md | sed 's/<!--.*-->//' | wc -w | tr -d ' ')

sed "s/\[Insert Word Count Here\]/$WORD_COUNT/" IRR.md > IRR_temp.md
pandoc IRR_temp.md -o IRR.pdf --pdf-engine=xelatex
rm IRR_temp.md

echo "Word count: $WORD_COUNT"
