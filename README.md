# Barcelona geodata

<img align="right" src="seccio-censal.jpg" width="300" height="auto">

The [official shapefiles](http://w20.bcn.cat/cartobcn/default.aspx) of Barcelona, converted to GeoJSON and TopoJSON.

*[Check out [barcelona-atlas](https://github.com/martgnz/barcelona-atlas) to generate your TopoJSON with combined features, fine-grained controls and no need of external dependencies]*

## Metadata

Please read the [metadata file](http://w20.bcn.cat/cartobcn/getFile.ashx?t=bdd&f=42588360097904) for a description of every file and field.

## Recreate the files
Assuming that you have [ogr2ogr](https://trac.osgeo.org/gdal/wiki/DownloadingGdalBinaries) and [topojson-server](https://github.com/topojson/topojson-server) installed globally:

- Run the script
```bash
$ ./convert.sh
```
- Voilà! Find the files in their respective folder.

You can tweak the script to delete properties from the original shapefile and adjust the simplification.

## Source

Ajuntament de Barcelona / [CartoBCN](http://w20.bcn.cat/cartobcn/) ([CC-BY](http://w133.bcn.cat/geoportal/descargas/ca_ca_cond_us_carto.pdf)).

Last data source update: 11/03/2020.