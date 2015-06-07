#!/bin/bash

cd src

ogr2ogr -f "GeoJSON" \
-s_srs "+init=epsg:23031 +nadgrids=./100800401.gsb +wktext" \
-t_srs EPSG:4326 \
area-estadistica_geo.json \
BCN_Àrea_Estadística_Bàsica_ED50_SHP.shp

topojson -o area-estadistica_topo.json \
area-estadistica_geo.json \
-p codi=C_Barri,barri=N_Barri

mkdir -p output/area-estadistica && mv *.json output/area-estadistica

ogr2ogr -f "GeoJSON" \
-s_srs "+init=epsg:23031 +nadgrids=./100800401.gsb +wktext" \
-t_srs EPSG:4326 \
area-interes_geo.json \
BCN_Àrea_Interès_ED50_SHP.shp

topojson -o area-interes_topo.json \
area-interes_geo.json \
-p codi=C_Barri,barri=N_Barri

mkdir -p output/area-interes && mv *.json output/area-interes

ogr2ogr -f "GeoJSON" \
-s_srs "+init=epsg:23031 +nadgrids=./100800401.gsb +wktext" \
-t_srs EPSG:4326 \
barris_geo.json \
BCN_Barri_ED50_SHP.shp

topojson -o barris_topo.json \
barris_geo.json \
-p codi=C_Barri,barri=N_Barri

mkdir -p output/barris && mv *.json output/barris

ogr2ogr -f "GeoJSON" \
-s_srs "+init=epsg:23031 +nadgrids=./100800401.gsb +wktext" \
-t_srs EPSG:4326 \
districtes_geo.json \
BCN_Districte_ED50_SHP.shp

topojson -o districtes_topo.json \
districtes_geo.json \
-p codi=C_Distri,districte=N_Distri

mkdir -p output/districtes && mv *.json output/districtes

ogr2ogr -f "GeoJSON" \
-s_srs "+init=epsg:23031 +nadgrids=./100800401.gsb +wktext" \
-t_srs EPSG:4326 \
seccio-censal_geo.json \
BCN_Secció_Censal_ED50_SHP.shp

topojson -o seccio-censal_topo.json \
seccio-censal_geo.json \
-p districte=C_Distri,seccioc=C_SecCens

mkdir -p output/seccio-censal && mv *.json output/seccio-censal

echo "You can find the GeoJSON and TopoJSON files in the src/output folder"
