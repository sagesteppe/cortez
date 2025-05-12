#' Places which the Western Flyer passed through on Ricketts and Steinbecks journey to the sea of Cortez. 
#' 
#' A dataset with place names provided both following the text, and more modern Mexican place names in Spanish. 
#' Note that several of the book place names seem somewhat peculiar, but the localities seem well matched to the current names in spanish. 
#' @format sf/tibble/dataframe with two date columns. 
#' \describe{
#'	\item{location-espanol}{A currently used place name in spanish.}
#'	\item{location-english}{The name of the location used in the book.}
#'	\item{collect}{Boolean. Whether the crew collected specimens there.}
#'	\item{date_arrive}{The date the Western flyer arrived (or passed the place).}
#'	\item{date_depart}{The date the Western flyer departed, or passed the place.}
#'	\item{geometry}{The geometry of the place, not 100% accurate, and often slightly off shore.}
#'	}

"places"

#' A stylized route of the Western Flyer on Ricketts and Steinbecks journey to the sea of Cortez.
#' 
#' A dataset with a destination and a route to that destination. 
#' Note that the route is fictionalized from the book, and modified to be aesthetically pleasing, rather than nautically accurate. 
#' @format sf/tibble/dataframe, with a single variable to join to the 'places' data set (if desired). 
#' \describe{
#'	\item{Destination}{The name of locations used in the book. Can be used to join to the "places" dataset to get dates of travel.}
#'	\item{geometry}{a sf linestring, from the previous destination to the current one.}
#' }
#' 
#' @examples
#' data(route)
#' plot(route[,'date_arrive'])
#' 
#' places <- st_drop_geometry(places)
#' route <- left_join(route, st_drop_geometry(places), by = c('Destination' = 'location.english'))
#' 
#' plot(route[,6])
#' 
#' library(ggplot2)
#' ggplot() + 
#'	 geom_sf(data = route, aes(color = date_arrive))
#' 

"route"

