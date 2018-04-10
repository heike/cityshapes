#' Shape files for the neighborhoods of Baltimore
#'
#' A dataset consisting of shapefiles describing the neighborhoods of Baltimore.
#' The shapefiles of the neighborhoods is available from the Baltimore City Open GIS Data \url{http://gis-baltimore.opendata.arcgis.com/}
#' @format A data frame with 4732 rows and 6 variables:
#' \describe{
#'   \item{OBJECTID}{identifier for each region}
#'   \item{long}{geographic longitude}
#'   \item{lat}{geographic latitude}
#'   \item{group}{grouping variable for the polygon}
#'   \item{order}{order of the rows}
#'   \item{region}{name of the region}
#' }
#' @keywords datasets
#' @examples
#' data(baltimore_map)
#' ggplot(baltimore_map, aes(x = long, y = lat, group = group)) +
#'  geom_path()
"baltimore_map"


#' Baltimore neighborhood demographics
#'
#' A dataset with demographic information for each of Baltimore's neighborhoods.
#' The data is available from the Baltimore City Open GIS Data \url{http://gis-baltimore.opendata.arcgis.com/}.
#' @format A data frame with 278 rows and 44 variables:
#' \describe{
#'   \item{OBJECTID}{identifier for each neighborhood}
#'   \item{Name}{name of the neighborhood}
#'   \item{Population}{size of the population}
#'   \item{White}{number of Caucasians}
#'   \item{Blk_AfAm}{number of African Americans}
#'   \item{...}{lots more}
#' }
#' @keywords datasets
#' @examples
#' data(baltimore_map)
#' data(baltimore)
#' baltimore_map <- dplyr::left_join(baltimore_map, baltimore, by="OBJECTID")
#' ggplot(baltimore_map, aes(x = long, y = lat, group = group)) +
#'  geom_polygon(aes(fill = Population))
#' ggplot(baltimore_map, aes(x = long, y = lat, group = group)) +
#'  geom_polygon(aes(fill = Blk_AfAm/Population*100))
"baltimore"
