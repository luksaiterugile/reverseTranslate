#!/usr/bin/sh

# Testavimo atvejis, kai duomenys imami iš SDTIN, o duomenyse yra daugiau nei vienas 'warn'.

cat tests/data/all_warnings.fasta | ./reverseTranslate
