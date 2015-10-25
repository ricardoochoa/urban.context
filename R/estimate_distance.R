estimate_distance <- function(x, y, df.x, df.y){
  return(
    t(spDists(
      SpatialPoints(coords = data.frame(x = x, y = y), proj4string=CRS("+proj=longlat +datum=WGS84")),
      SpatialPoints(coords = data.frame(x = df.x, y = df.y), proj4string=CRS("+proj=longlat +datum=WGS84")),
      longlat=T))
  )
}
