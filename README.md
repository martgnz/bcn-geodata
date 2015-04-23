Barcelona Geodata
=================
The official shapefiles from Barcelona, converted to GeoJSON and TopoJSON for making your life easier.

## CDN

## Recreate the files
Assuming that you have [ogr2ogr](https://trac.osgeo.org/gdal/wiki/DownloadingGdalBinaries) and [topojson](https://github.com/mbostock/topojson) installed:

- Run the script
```bash
$ ./convert.sh
```
- Voilà! Find the files in the `src/output` folder.

You can tweak the script for maintaining more properties from the original shapefile or for adjusting the simplification. Thanks to [@oscarfonts](https://github.com/oscarfonts) for the NTv2 ICC grid.

Source: Ajuntament de Barcelona / [CartoBCN](http://w20.bcn.cat/cartobcn/). License: CC-BY.