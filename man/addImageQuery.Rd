% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imagequery.R
\name{addImageQuery}
\alias{addImageQuery}
\title{Add image query functionality to leaflet/mapview map.}
\usage{
addImageQuery(
  map,
  x,
  band = 1,
  group = NULL,
  layerId = NULL,
  project = TRUE,
  type = c("mousemove", "click"),
  digits,
  position = "topright",
  prefix = "Layer",
  className = "",
  ...
)
}
\arguments{
\item{map}{the map with the RasterLayer to be queried.}

\item{x}{the RasterLayer that is to be queried.}

\item{band}{for stars layers, the band number to be queried.}

\item{group}{the group of the RasterLayer to be queried.}

\item{layerId}{the layerId of the RasterLayer to be queried. Needs to be the
same as supplied in \code{\link[leaflet]{addRasterImage}} or
\code{\link{addStarsImage}}.}

\item{project}{whether to project the RasterLayer to conform with leaflets
expected crs. Defaults to \code{TRUE} and things are likely to go haywire
if set to \code{FALSE}.}

\item{type}{whether query should occur on 'mousemove' or 'click'. Defaults
to 'mousemove'.}

\item{digits}{the number of digits to be shown in the display field.}

\item{position}{where to place the display field. Default is 'topright'.}

\item{prefix}{a character string to be shown as prefix for the layerId.}

\item{className}{a character string to append to the control legend.}

\item{...}{currently not used.}
}
\value{
A leaflet map object.
}
\description{
Add image query functionality to leaflet/mapview map.
}
\details{
This function enables Raster*/stars objects added to leaflet/mapview maps to
be queried. Standard query is on 'mousmove', but can be changed to 'click'.
Note that for this to work, the \code{layerId} needs to be the same as the
one that was set in \code{\link[leaflet]{addRasterImage}} or
\code{\link{addStarsImage}}. Currently only works for
numeric values (i.e. numeric/integer and factor values are supported).
}
\examples{
if (interactive()) {
  if (requireNamespace("plainview")) {
    library(leaflet)
    library(plainview)

    leaflet() \%>\%
      addProviderTiles("OpenStreetMap") \%>\%
      addRasterImage(poppendorf[[1]], project = TRUE, group = "poppendorf",
                     layerId = "poppendorf") \%>\%
      addImageQuery(poppendorf[[1]], project = TRUE,
                    layerId = "poppendorf") \%>\%
      addLayersControl(overlayGroups = "poppendorf")
  }
}

}
