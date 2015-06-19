library(RCurl)
library(RJSONIO)
library(plyr)


distbase <- "http://maps.googleapis.com/maps/api/distancematrix/json?&origins="
url1 <- function(origin , destination , sep = "") {
  u2 <- paste(distbase, origin ,"&destinations=",
              destination ,"&mode=driving&units=imperial&language=EN&sensor=false")
  
  return(URLencode(u2))
}


driving.distance <- function(origin, destination,verbose=FALSE) {
  if(verbose) cat(origin,destinaiton,"\n")
  u3 <- url1(origin,destination)
  doc <- getURL(u3)
  x <- fromJSON(doc,simplify = FALSE)
  if(x$status=="OK") {
    dist <- x$rows[[1]]$elements[[1]]$distance$text
    return(c(dist))
  } else {
    return(c(NA))
  }
}
