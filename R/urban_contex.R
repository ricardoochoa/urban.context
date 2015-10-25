
urban_context <-  function(x, y, data, df.x = "x", df.y = "y", variable = "variable", radius = 1, FUN, empty.value = 0){

  data <- cut_data(x = x, y = y, data = data, side.length = radius / 50)

  if (nrow(data) > 0) {
    data$distance <- estimate_distance(x = x, y = y,
                                       df.x = data[,df.x],
                                       df.y = data[,df.y])
    data <- subset(data, distance <= radius)

    return(FUN(data[,variable]))} else{
      return(empty.value)}
}

