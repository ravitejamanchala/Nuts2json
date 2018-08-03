#!/usr/bin/env bash

#make topojson base files, one per nuts level
#https://github.com/topojson/topojson-server/blob/master/README.md#geo2topo
for year in "2013" "2016"
do
  for proj in "etrs89" "laea" "wm"
  do

    dir="tmp/"$year"/"$proj

    for level in 0 1 2 3
    do
      echo "$year $proj $level - geojson to topojson"
      geo2topo nutsrg=$dir"/RG/"$level".shp" > $dir"/"$level".topojson"

    done
  done
done
