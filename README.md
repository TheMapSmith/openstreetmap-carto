# OpenStreetMap Carto - For Mapbox Studio

The included .tm2 and .tm2source files are being developed to work seamlessly with your imported OSM data in a postgres database

### Do a find and replace for "spoon" in the .yml file to change the username to your OSM Postgres database

This was done manually. A more efficient route would be to write a script to convert the master .mml file to the Mapbox Studio .yml file.

The hardest part was figuring out what to do with the special characters in the SQL queries in the .mml

Find and replace:
\n -> [Return]

\ -> [Deleted]

.id (TM1) -> # (TM2)

- -> _	(in source names)

### Lessons Learned:

The data order in the data.yml is different from the order in project.mml (reversed)

These were pretty inconsistent throughout the various SQL queries...

---

The standard stylesheet on [OpenStreetMap.org](http://www.openstreetmap.org) An implemention of the standard OpenStreetMap mapnik style, in CartoCSS.

These stylesheets can be used in your own cartography projects, and are designed to be easily
customised. They work with [TileMill](http://www.mapbox.com/tilemill/) and also with the command-line [CartoCSS](https://github.com/mapbox/carto) processor.

Since August 2013 these stylesheets are used on the OSMF tileservers (tile.openstreetmap.org), and
are updated from each point release. They supersede the previous [XML-based stylesheets](https://trac.openstreetmap.org/browser/subversion/applications/rendering/mapnik)

# Setup

You need OpenStreetMap data loaded into a PostGIS database (see below for [dependencies](https://github.com/gravitystorm/openstreetmap-carto#dependencies)). These stylesheets currently work only with the osm2pgsql defaults (i.e. database name is ``gis``, table names are ``planet_osm_point``, etc).

It's probably easiest to grab an PBF of OSM data from [metro.teczno.com](http://metro.teczno.com/) or [geofabrik](http://download.geofabrik.de/). Once you've set up your PostGIS database, import with osm2pgsql:

```
osm2pgsql -d gis ~/path/to/data.osm.pbf --style openstreetmap-carto.style
```

You can find a more detailed guide to setting up a database and loading data with osm2pgsql at [switch2osm.org](http://switch2osm.org/loading-osm-data/)

# This repo doesn't include the NE shapefiles