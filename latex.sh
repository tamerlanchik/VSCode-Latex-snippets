#!/bin/bash

echo "Start templated latex building!"

workdir=$1
filename=$2
projectDir=${3:-${workdir}}
base=${workdir}/${filename}
echo "Got: ${base}, proj: ${projectDir}"
python3 ${projectDir}/scripts/expand.py ${base}.tex ${base}.gen.tex ${base}.json
pdflatex ${base}.gen.tex -output-directory ${workdir}
mv ${base}.gen.pdf ${base}.pdf
