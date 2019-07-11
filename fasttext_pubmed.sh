./fasttext skipgram -input abstracts_processed.txt -output abstracts_embedding -dim 200 -t 0.001 -minCount 0 -neg 10 -wordNgrams 6 -ws 30
