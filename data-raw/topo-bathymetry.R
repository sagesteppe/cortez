setwd('~/Documents/cortez/data-raw')

library(sf)
library(terra)
library(tidyverse)
library(smoothr)


p <- '~/Documents/DEM4flyr'
f <- file.path(p, list.files(p, pattern = '.bil$'))
r <- mosaic(sprc(f))

  # now cut off everything north of San Fran. our northern limit is Santa Cruz :)

plot(r)

v <- as.contour(r, maxcell = 2.5e8)

sf_ver <- st_as_sf(v) |>
  filter(level != 0) |>   # these are near the shore, remove them.
  st_make_valid() |> # make all gucci mane
  st_cast('LINESTRING') |>
  mutate(ID = 1:n()) # add some ID's to play with small polys in QGIS and sort it out.


level500 <- sf_ver$level==500
areas <-  units::set_units(st_length(sf_ver), 'km')

indx <- which(level500==TRUE & areas < units::set_units(10, 'km'))

sf_ver <- sf_ver[-indx,]

# if level is 500 and area < 10 hectares ( number currently made up) remove
# if level is >1000 & NOT WITHIN 500 then remove < 10 hectares too


# fid i want gone: 3278, 3269, 3004

st_write(sf_ver, 'contour.gpkg', append = F)
