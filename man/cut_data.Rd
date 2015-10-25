\name{cut_data}
\alias{cut_data}
\title{
Cut 2d data
}
\description{
Cut a 2d dataframe based on a point and a side length of a square.  
}
\usage{
cut_data(x, y, data, df.x = "x", df.y = "y", side.length)
}

\arguments{
  \item{x}{Longitude coordinates in decimal degrees for the reference point.}
  \item{y}{Latitude coordinates in decimal degrees for the reference point.}
  \item{data}{data.frame with the observations that will be cut. This data.frame should have at least two columns: x and y.}
  \item{df.x}{Name of the column in the dataframe which includes the x coordinates in decimal degrees for each observation. Default is set to "x".}
  \item{df.y}{Name of the column in the dataframe which includes the latitude coordinates in decimal degrees for each observation.}
  \item{side.length}{Side length in decimal degrees of the sorrunding box that will cut the spatial 2d dataframe.}
}
\value{
A subset of data. 
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

cut_data(x = -99.490, y = 19.16, data = my.data, side.length = 0.01)

}
\keyword{spatial}
\keyword{2d}
\keyword{cut}
\keyword{subset}
