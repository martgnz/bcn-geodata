#!/bin/bash

generate_files() {
  rm $1/*.geojson $1/*.json

  ogr2ogr -f "GeoJSON" \
    -s_srs "+init=epsg:23031 +nadgrids=./src/100800401.gsb +wktext" \
    -t_srs EPSG:4326 \
    -overwrite \
    "$1"/"$1".geojson \
    src/"$2".shp

  geo2topo -q 1e4 "$1"/"$1".geojson > "$1"/"$1".json
} 

generate_files "area-estadistica-basica" "0301040100_AEB_ADM_ETRS89"
generate_files "barris" "0301040100_Barris_ADM_ETRS89"
generate_files "districtes" "0301040100_Districtes_ADM_ETRS89"
generate_files "gran-barri" "0301040100_GranBarri_ADM_ETRS89"
generate_files "seccio-censal" "0301040100_SecCens_ADM_ETRS89"
generate_files "terme-municipal" "0301040100_Terme Municipal_ADM_ETRS89"
generate_files "zona-urban-audit" "0301040100_ZUA_ADM_ETRS89"
