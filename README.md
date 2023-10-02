# ReverseTranslate

## Description
ReverseTranslate is a program that generates a gene sequence from a given peptide sequence using the nucleus genetic code and E. coli codon frequencies. It takes input peptide sequences in FASTA format and outputs the corresponding DNA sequence.

## Usage
```
./reverseTranslate peptideSeq_1.fasta [peptideSeq_2.fasta ...]
```
- Input FASTA files are not mandatory; the program can read from standard input (STDIN).
- The program processes all sequences from the input stream.
- If files are empty, the program will skip them without printing a warning message.
  
## Input Format
- The input is provided in FASTA format with '>' symbol and an identification code.
- Each sequence must be in uppercase and without forbidden characters.
- The program will skip sequences without valid headers or empty sequences.
- More than one FASTA file can be provided.
Example Input:
```
>header1
MPLPQYQSLV
>header2
GQVLPL
```

## Output Format
The program outputs the modified header and the corresponding nucleotide (DNA) sequence for each input sequence.
```
>header1 {input_filename} or {-} reverseTranslate Author
TTTCTGTATCATCAGATTATGACCAAA
```

## Diagnostics
The program provides warnings for the following errors:
- Non-existent or unreadable input files.
- Input files with valid headers but empty sequences.
- Input sequences with invalid headers or forbidden symbols.

Warning Format:
```
[Warning] {Program Name}: {File Name} ({Valid Header if Available}): {Warning Message}
```

## References
1. [Codon Usage Database, Escherichia coli O157:H7 EDL933 [gbbct]](http://www.kazusa.or.jp/codon/cgi-bin/showcodon.cgi?species=155864&aa=SELECT+A+CODE&style=N)
2. [FASTA format description](https://zhanggroup.org/FASTA/)


### More information can be found under Specification/Specifications.txt
