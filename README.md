# rgee-docker

[![DOI](https://zenodo.org/badge/85984414.svg)](https://zenodo.org/badge/latestdoi/85984414)

Geospatial Docker for rgee, building on rocker/geospatial.

This image is a modification of [`rocker/geospatial`](https://github.com/rocker-org/geospatial) with support to Python 3.7 and Selenium drivers.  As such, this image includes RStudio and tidyverse packages. Versions older than the most recent will install R packages from an MRAN snapshot, and may not provide all the same packages as seen on the most recent versions. 

## Installation and execution
- Install [docker]()
- In terminal execute

```
uploading the docker images in my toaster with an internet connection from Peru :'v ... please wait
```

## Packages - R

Package             | Maintainer   | Description 
--------------------|--------------|----------------------------------
stars               | Pebesma      | Spatiotemporal Arrays, Raster and Vector Data Cubes
rgdal               | Bivand       | Interface to GDAL, I/O formats. See `sf` for more recent implementation
sf                  | Pebesma      | Simple-features oriented replacement for sp, rgdal, rgeos, and proj4 libraries, includes dplyr-style
leaflet             | jcheng5      | R Interface to Leaflet Maps http://rstudio.github.io/leaflet
maview              | Salabim      | Interactive viewing of spatial data in R https://r-spatial.github.io/mapview/
geojsonio           | Chamberlain  | Convert many data formats to & from GeoJSON & TopoJSON https://docs.ropensci.org/geojsonio
getPass             | Schmidt      | Password function for R with masking (where supported)
crayon              | gaborcsardi  | R package for colored terminal output
cli                 | Csárdi       | Tools for making beautiful & useful command line interfaces
googledrive         | jennybc      | Google Drive R API https://googledrive.tidyverse.org
googleCloudStorageR | Edmondson    | An R interface to the Google Cloud Compute API, for launching virtual machines
geojsonlint         | Chamberlain  | GeoJSON linting for R 
lwgeom              | Pebesma      | Bindings to the liblwgeom library https://r-spatial.github.io/lwgeom/
raster              | Hijmans      | Reading, writing, manipulating, analyzing and modeling of gridded spatial data.
gstat               | Pebesma      | Spatial and Spatio-Temporal Geostatistical Modelling, Prediction and Simulation
classInt            | Bivand       | Selected commonly used methods for choosing univariate class intervals for mapping or
rgeos               | Bivand       | Interface to GEOS (geometry operations). See `sf` for more recent implementation methods.
spacetime           | Pebesma      | Classes and Methods for Spatio-Temporal Data
spatstat            | Baddeley     | Large spatial statistics package: Spatial Point Pattern Analysis, Model-Fitting, 
spdep               | Bivand       | Spatial Dependence: Weighting Schemes, Statistics and Models
tmap                | Tennekes     | Thematic, layer-based maps (sf and sp compatible)
geosphere           | Hijmans      | Spherical trigonometry for geographic applications. That is, compute distances and related measures for angular (longitude/latitude) locations. 
hdf5r               | Hoefling     | Modern bindings to HF5 C API (replaces hf package)
RNetCDF             | Woods        | Bindings to C API NetCDF library, with udunits other graphics purposes.
cptcity             | Ibarra       | 7140 colour palletes in an R package to play
rnaturalearth       | AndySouth    | an R package to hold and facilitate interaction with natural earth map data earth_africa
gganimate           | thomasp85    | A Grammar of Animated Graphics https://gganimate.com

## Packages - Python

Package           | Maintainer | Description 
------------------|------------|----------------------------------
earth-engine      | Google     | Python bindings for calling the Earth Engine API.
selenium          | SeleniumHQ | Python language bindings for Selenium WebDriver.
bs4               | Richardson | Python package for parsing HTML and XML documents
requests_toolbelt | Cordasco   | A toolbelt of useful classes and functions to be used with python-requests
