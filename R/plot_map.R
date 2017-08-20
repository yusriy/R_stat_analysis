# Plotting Maps

#install packages (if necessary)
install.packages("ggmap")

#loading libraries
library(ggmap)

#download map from google
sitemap <- get_googlemap(center = c(lon = 100.302100,lat = 5.358086), sensor=TRUE,
                         size = c(640,640), scale = 2, zoom = 15, 
                         maptype = "terrain")
#create map
map_plot <- ggmap(sitemap) +
  geom_point(aes_string(x = "100.302100",y = "5.358086"),size = 3,
             shape = 16,colour = "black") +
  geom_text(aes_string(x="100.302100",y="5.358086"),label="Ind. Tech.",
            colour="black",size=4,
            fontface="plain",hjust=0,vjust=-1.00) +
  xlab("Longitude") + ylab("Latitude")
#plot map
map_plot
