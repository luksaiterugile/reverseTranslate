#!/usr/bin/sh

# Testavimo atvejis, kai duomenys imami iš SDTIN, o duomenyse yra seka be headerio. 

cat tests/data/noheader.fasta | ./reverseTranslate
