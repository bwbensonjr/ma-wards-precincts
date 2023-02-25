library(tidyverse)
library(sf)
library(tmap)
tmap_options(max.categories=160)

wards_pcts <- read_sf("ma_wards_precincts_w_subs.geojson")

us_house_map <- (
    tm_shape(wards_pcts) +
    tm_fill(col="US_House",
            popup.vars=TRUE,
            alpha=0.7) +
    tm_borders(lwd=0.5) +
    tm_basemap("OpenStreetMap") +
    tm_layout("MA U.S. House Districts by Precinct")
)

tmap_save(us_house_map, "maps/us_house_map.html")
tmap_save(us_house_map, "maps/us_house_map.png")

gov_council_map <- (
    tm_shape(wards_pcts) +
    tm_fill(col="Gov_Council",
            popup.vars=TRUE,
            alpha=0.7) +
    tm_borders(lwd=0.5) +
    tm_basemap("OpenStreetMap") +
    tm_layout("MA Governor's Council Districts by Precinct")
)

tmap_save(gov_council_map, "maps/gov_council_map.html")
tmap_save(gov_council_map, "maps/gov_council_map.png")

state_senate_map <- (
    tm_shape(wards_pcts) +
    tm_fill(col="State_Senate",
            popup.vars=TRUE,
            legend.show=FALSE,
            alpha=0.7) +
    tm_borders(lwd=0.5) +
    tm_basemap("OpenStreetMap") +
    tm_layout("MA State Senate Districts by Precinct")
)

tmap_save(state_senate_map, "maps/state_senate_map.html")
tmap_save(state_senate_map, "maps/state_senate_map.png")

state_rep_map <- (
    tm_shape(wards_pcts) +
    tm_fill(col="State_Rep",
            popup.vars=TRUE,
            legend.show=FALSE,
            alpha=0.7) +
    tm_borders(lwd=0.5) +
    tm_basemap("OpenStreetMap") +
    tm_layout("MA State Representative Districts by Precinct")
)

tmap_save(state_rep_map, "maps/state_rep_map.html")
tmap_save(state_rep_map, "maps/state_rep_map.png")
