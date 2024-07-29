#!/bin/csh

mv properties.csv properties.csv.bak
mkdir tmp

set c=/home/vmenkov/w2020/game/scripts/composite.sh

echo 'image,name,body,jn,js,je,jw,kn,ks,ke,kw' >  properties.csv

$c '/composite/g55/bq/bq/bq/bq/bq/bq/bq/bq/rq/rq/bq/bq/rq/bq/bq/bq/rq/bq/bq/bq/bq/rq/bq/bq/bq' > b1-nw.svg
echo 'b1-nw.svg,b1-nw,1,1,0,0,1,0,0,0,0'  >>  properties.csv

$c '/composite/g55/bq/bq/bq/bq/bq/rq/rq/bq/bq/bq/bq/bq/rq/bq/bq/bq/bq/bq/rq/bq/bq/bq/bq/rq/bq' > b1-ne.svg
echo 'b1-ne.svg,b1-ne,1,1,0,1,0,0,0,0,0'  >>  properties.csv

$c '/composite/g55/bq/rq/bq/bq/bq/bq/rq/bq/bq/bq/bq/bq/rq/bq/bq/bq/bq/bq/rq/rq/bq/bq/bq/bq/bq' > b1-sw.svg
echo 'b1-sw.svg,b1-sw,1,0,1,0,1,0,0,0,0'  >>  properties.csv

$c '/composite/g55/bq/bq/bq/rq/bq/bq/bq/bq/rq/bq/bq/bq/rq/bq/bq/rq/rq/bq/bq/bq/bq/bq/bq/bq/bq' > b1-se.svg
echo 'b1-se.svg,b1-se,1,0,1,1,0,0,0,0,0'  >>  properties.csv


$c '/composite/g55/allColors=g/b=1333331111313333131131311' > b2-nw.svg
echo 'b2-nw.svg,b2-nw,2,0,0,0,0,1,0,0,1'  >>  properties.csv

$c '/composite/g55/allColors=g/b=3333111113333131131311313' > b2-ne.svg
echo 'b2-ne.svg,b2-ne,2,0,0,0,0,1,0,1,0'  >>  properties.csv

$c '/composite/g55/allColors=g/b=3131131311313333111113333' > b2-sw.svg
echo 'b2-sw.svg,b2-sw,2,0,0,0,0,0,1,0,1'  >>  properties.csv

$c '/composite/g55/allColors=g/b=1131311313333131111333331' > b2-se.svg
echo 'b2-se.svg,b2-se,2,0,0,0,0,0,1,1,0'  >>  properties.csv
