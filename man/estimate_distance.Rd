\name{estimate_distance}
\alias{estimate_distance}
\title{
Estimate distance in kilometers from lat long points
}
\description{
Estimate the distance in kilometers from one point to a set of points in decimal long-lat coordinates.
}
\usage{
estimate_distance(x, y, df.x, df.y)
}
\arguments{
  \item{x}{Longitude coordinates in decimal degrees for the reference point.}
  \item{y}{Latitude coordinates in decimal degrees for the reference point.}
  \item{df.x}{Vector with the longitude coordinates in decimal degrees. Should have the same length as df.y.}
  \item{df.y}{Vector with the latitude coordinates in decimal degrees. Should have the same length as df.x.}
}
\value{
A vector of the same length than df.x and df.y, with the distances in kilometers between points.
}
\author{
Ricardo Ochoa Sosa
}
\examples{
my.data <-
read.table(header = TRUE, text = "
x	y	variable
-99.495	19.16	1
-99.490	19.16	5
-99.500	19.14	2
-99.490	19.15	10
")
#
estimate_distance(x = -99.490,
                  y = 19.16,
                  df.x = my.data$x,
                  df.y = my.data$y)
}
\keyword{spatial}
\keyword{distance}
