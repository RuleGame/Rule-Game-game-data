#!/bin/csh

mv properties.csv properties.csv.bak
mkdir tmp

set c=/home/vmenkov/w2020/game/scripts/composite.sh

echo 'image,name,color,value' >  properties.csv

$c '/composite/g33/rq/xx/xx/xx/xx/xx/xx/xx/xx' > r-1.svg
echo 'r-1.svg,r-1,red,1'  >>  properties.csv

$c '/composite/g33/rq/rq/xx/xx/xx/xx/xx/xx/xx' > r-2.svg
echo 'r-2.svg,r-2,red,2'  >>  properties.csv

$c '/composite/g33/rq/rq/rq/xx/xx/xx/xx/xx/xx' > r-3.svg
echo 'r-3.svg,r-3,red,3'  >>  properties.csv

$c '/composite/g33/rq/rq/rq/rq/xx/xx/xx/xx/xx' > r-4.svg
echo 'r-4.svg,r-4,red,4'  >>  properties.csv

$c '/composite/g33/rq/rq/rq/rq/rq/xx/xx/xx/xx' > r-5.svg
echo 'r-5.svg,r-5,red,5'  >>  properties.csv

$c '/composite/g33/rq/rq/rq/rq/rq/rq/xx/xx/xx' > r-6.svg
echo 'r-6.svg,r-6,red,6'  >>  properties.csv


$c '/composite/g33/bq/xx/xx/xx/xx/xx/xx/xx/xx' > b-1.svg
echo 'b-1.svg,b-1,blue,1'  >>  properties.csv

$c '/composite/g33/bq/bq/xx/xx/xx/xx/xx/xx/xx' > b-2.svg
echo 'b-2.svg,b-2,blue,2'  >>  properties.csv

$c '/composite/g33/bq/bq/bq/xx/xx/xx/xx/xx/xx' > b-3.svg
echo 'b-3.svg,b-3,blue,3'  >>  properties.csv

$c '/composite/g33/bq/bq/bq/bq/xx/xx/xx/xx/xx' > b-4.svg
echo 'b-4.svg,b-4,blue,4'  >>  properties.csv

$c '/composite/g33/bq/bq/bq/bq/bq/xx/xx/xx/xx' > b-5.svg
echo 'b-5.svg,b-5,blue,5'  >>  properties.csv

$c '/composite/g33/bq/bq/bq/bq/bq/bq/xx/xx/xx' > b-6.svg
echo 'b-6.svg,b-6,blue,6'  >>  properties.csv


$c '/composite/g33/gq/xx/xx/xx/xx/xx/xx/xx/xx' > g-1.svg
echo 'g-1.svg,g-1,green,1'  >>  properties.csv

$c '/composite/g33/gq/gq/xx/xx/xx/xx/xx/xx/xx' > g-2.svg
echo 'g-2.svg,g-2,green,2'  >>  properties.csv

$c '/composite/g33/gq/gq/gq/xx/xx/xx/xx/xx/xx' > g-3.svg
echo 'g-3.svg,g-3,green,3'  >>  properties.csv

$c '/composite/g33/gq/gq/gq/gq/xx/xx/xx/xx/xx' > g-4.svg
echo 'g-4.svg,g-4,green,4'  >>  properties.csv

$c '/composite/g33/gq/gq/gq/gq/gq/xx/xx/xx/xx' > g-5.svg
echo 'g-5.svg,g-5,green,5'  >>  properties.csv

$c '/composite/g33/gq/gq/gq/gq/gq/gq/xx/xx/xx' > g-6.svg
echo 'g-6.svg,g-6,green,6'  >>  properties.csv



rm -rf tmp

