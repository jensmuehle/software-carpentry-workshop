#!/bin/bash
cd ~/python
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o ~/python/rawdata.zip -L
# -L makes sure it followes redirects
unzip rawdata.zip

rm _*.tmp

for f in *.txt
do
	mv $f ${f/txt/csv}
done

echo Available csv files
ls *.csv

for f in *data.csv
do
	python ./analyze_mosquito_data_script.py $f
done

mkdir figures
mkdir parameters

mv *png figures/
mv *parameters.csv parameters/
