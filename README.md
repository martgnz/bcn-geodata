bcn-geodata
========
The official shapefiles from Barcelona, converted to GeoJSON and TopoJSON for making your life easier.

## Recreate the files
- Go to the [CartoBCN](http://w20.bcn.cat/cartobcn/) website and make an account. After that, click on `Catàleg` and select the SHP we are going to use, `ED50. DIVISIONS ADMINISTRATIVES en format CAD/SHP/KMZ` in this case.

- Extract the zip and the `BCN_DIVADM_ED50_SHP.ZIP` file again. We have five different files. First, the basic statistic area, then `Àrea d'interès`, which is an area important for statistic purposes (but it covers only Montjuïc), after that the neighbourhoods, the districts and the census area. We will first convert the shapefiles to GeoJSON, using the `ogr2ogr` tool. [A good tutorial](http://ben.balter.com/2013/06/26/how-to-convert-shapefiles-to-geojson-for-use-on-github/) if you don't know what I'm talking about. Let's go!

```bash
ogr2ogr -f GeoJSON \
-t_srs crs:84 \
output.geojson \
NAME_OF_YOUR_SHAPEFILE.shp
```
You can convert all the shapefiles that are interesting for you through this way.

- After that you will notice that the result is not particularly small, a problem if you want to use it on a web map. Now we are going to use TopoJSON, a format that can reduce the size up to a 85%! Install TopoJSON with `npm` (`npm install -g topojson`) and use this snippet:

```bash
topojson -o output.topo.json \
NAME_OF_YOUR.geojson \
-p barri=N_Barri,codi=C_Barri
```
In this case I'm using the BCN_Barri_ED50_SHP.shp file. Using the `-p` option I tell TopoJSON to preserve the name of the neighbourhood and its code, and rename them to `barri` and `codi`. You can adapt this to your needs looking at the GeoJSON properties for each file.

----

Congrats! Now you have a set of TopoJSONs ready to visualize! Look at [the TopoJSON command line reference](https://github.com/mbostock/topojson/wiki/Command-Line-Reference) for more powerful options.

Source: Ajuntament de Barcelona / [CartoBCN](http://w20.bcn.cat/cartobcn/). License: CC-BY.