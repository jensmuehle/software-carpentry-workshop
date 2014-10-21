#!/bin/bash
cd ~/python
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o ~/python/rawdata.zip -L
# -L makes sure it followes redirects
mkdir ~/python/rawdata
cd ~/python/rawdata
unzip ../rawdata.zip

rm *.tmp

for f in *.txt
do
	mv $f ${f/txt/csv}
done
