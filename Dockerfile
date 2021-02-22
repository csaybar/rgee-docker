FROM python:3.7
FROM rocker/verse
MAINTAINER "Cesar Aybar" csaybar@gmail.com

# set display port to avoid crash
ENV DISPLAY=:99

# R
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libv8-dev \
    lbzip2 \
    libfftw3-dev \
    libgdal-dev \
    libgeos-dev \
    libgsl0-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    libjq-dev \    
    libpq-dev \
    libproj-dev \
    libprotobuf-dev \
    libnetcdf-dev \
    libsqlite3-dev \
    libssl-dev \
    libudunits2-dev \
    netcdf-bin \
    postgis \
    protobuf-compiler \
    sqlite3 \
    tk-dev \
    unixodbc-dev \
  && install2.r --error \
      RColorBrewer \
    RandomFields \
    RNetCDF \
    classInt \
    deldir \
    gstat \
    hdf5r \
    lidR \
    lwgeom \
    mapdata \
    maptools \
    mapview \
    ncdf4 \
    proj4 \
    raster \
    rgdal \
    rgeos \
    rlas \
    sf \
    sp \
    spacetime \
    spatstat \
    spatialreg \
    spdep \
    geoR \
    geosphere \
    reticulate \
    stars \
    leaflet \
    mapview \
    geojsonio \
    getPass \
    crayon	\
    cli \
    googledrive \
    googleCloudStorageR \    
    lwgeom \
    cptcity \
    rnaturalearth \
    gganimate

RUN apt-get install -y \
		python3-pip \
		python3-dev \
	&& pip3 install virtualenv

RUN pip3 install coveralls \
    oauth2client \
    numpy \
    requests_toolbelt \
    earthengine-api \
    pyasn1

# Install anaconda
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda2-4.3.1-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh

#ENV PATH /opt/conda/bin:$PATH
RUN  R -e 'remotes::install_github("r-spatial/rgee")'
RUN  mkdir -p /home/rgee/.config/earthengine/ndef && \
     echo 'EARTHENGINE_PYTHON=/usr/bin/python3\nEARTHENGINE_INIT_MESSAGE="True"' > /home/rgee/.Renviron      


