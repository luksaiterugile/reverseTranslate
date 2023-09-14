#!/usr/bin/sh

# Testavimo atvejis, kai duomenys imami iš SDTIN, o duomenyse yra seka, kurioje yra netinkamų simbolių

cat tests/data/forbidden_symbols_seq.fasta | ./reverseTranslate
