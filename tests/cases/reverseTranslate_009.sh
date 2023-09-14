#!/usr/bin/sh

# Testavimo skriptas, kuriame iš STDIN nenurodomi jokios sekos ar headeriai.

cat tests/data/seq.fasta | ./reverseTranslate
