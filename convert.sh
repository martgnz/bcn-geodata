#!/bin/bash

generate_files() {
  rm $1/*.geojson $1/*.json

  ogr2ogr -f "GeoJSON" -t_srs crs:84 "$1"/"$1".geojson src/"$2".shp
  geo2topo -q 1e4 "$1"/"$1".geojson > "$1"/"$1".json
} 

generate_files "area-interes" "0301040100_Area_I_UNITATS_ADM"
generate_files "area-estadistica-basica" "0301040100_AEB_UNITATS_ADM"
generate_files "barris" "0301040100_Barris_UNITATS_ADM"
generate_files "districtes" "0301040100_Districtes_UNITATS_ADM"
generate_files "gran-barri" "0301040100_GranBarri_UNITATS_ADM"
generate_files "seccio-censal" "0301040100_SecCens_UNITATS_ADM"
generate_files "terme-municipal" "0301040100_TermeMunicipal_UNITATS_ADM"
generate_files "zona-urban-audit" "0301040100_ZUA_UNITATS_ADM"
