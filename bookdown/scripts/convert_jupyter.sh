#!/bin/bash

# convert the R Markdown files from the book to Jupyter notebooks.
for file in ../*.Rmd; do
  fname=$(basename -s .Rmd $file)
  jupytext --to notebook $file --output ../../jupyter/R/${fname}.ipynb
done