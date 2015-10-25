cut_data <- function(x, y, data, df.x = "x", df.y = "y", side.length){
  return(
  data[data[,df.x] < x + side.length &
       data[,df.x] > x - side.length &
       data[,df.y] < y + side.length &
       data[,df.y] > y - side.length  , ])
}
