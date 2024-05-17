library("tmap")
library("sf")

# Set tmap options to check and fix invalid geometries
tmap_options(check.and.fix = TRUE)

# Read the shapefile
boundary <- read_sf("C:\\PovertyMappingWorkshop\\PopData\\ZambiaHouseholds.shp")

# Check the structure of your data
print(boundary)

# Create a thematic map
tm <- tm_shape(boundary) +
  tm_polygons("hh_count", palette = "Blues", title = "Ward total population")

# View the map
tm
tmap_save(tm,filename = "WARDHH.html")