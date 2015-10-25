\name{urban_context}
\alias{urban_context}
\title{
Urban context
}
\description{
For a selected point in x-y (decilmal long-lat) coordinates, subset and summarise points found in an specified radius.
}
\usage{
urban_context(x, y, data, df.x = "x", df.y = "y", variable = "variable", radius = 1, FUN, empty.value = 0)
}
\arguments{
  \item{x}{Longitude coordinates in decimal degrees for the reference point.}
  \item{y}{Latitude coordinates in decimal degrees for the reference point.}
  \item{data}{data.frame with the observations that will be sumarised. This data.frame should have at least three columns: x, y, and variable.}
  \item{df.x}{Name of the column in the dataframe which includes the longitude coordinates in decimal degrees for each observation.}
  \item{df.y}{Name of the column in the dataframe which includes the latitude coordinates in decimal degrees for each observation.}
  \item{variable}{Name of the column in the dataframe "data", which includes the values to be summarised.}
  \item{radius}{Search radius in kilometers of the circunference with center in x, y. Default is set to 1 km.}
  \item{FUN}{Function to be applied.}
  \item{empty.value}{What to return if no point are found. Default is set to 0.}
}
\value{
A numeric value: the result of applying the function "FUN" to the column "variable", from a subset of "data". The subset includes all observations where the distance between (x, y) and (df.x, df.y) is less or equal than the distance defined by "radius".
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

urban_context(x = -99.490,
              y = 19.16,
              data = my.data,
              FUN = mean)

}
\keyword{spatial}
\keyword{urban}
\keyword{context}
