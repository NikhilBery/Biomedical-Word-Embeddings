#!/bin/bash

mkdir pubmed
cd pubmed
wget -N ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/*09.xml.gz 
cd ..

