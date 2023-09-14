#!/usr/bin/sh

# Testavimo atvejis, kuriame skaitoma iš STDIN, pateikiamas headeris, neturintis sekos

cat tests/data/without_sequence.fasta | ./reverseTranslate
