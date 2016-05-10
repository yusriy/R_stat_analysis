##### TITLE: To process XML file to become a dataframe in R #####
# Author: Yusri Yusup
# Date: 2016-05-10
# Version: 1.0
# Note: Taken from 'http://www.r-bloggers.com/r-and-the-web-for-beginners-part-ii-xml-in-r/'
#

#### * Install preliminaries and packages ####
#install.packages('XML')
library(XML)

#### * Read and process xml ####

# Use the xmlTreePares-function to parse xml file directly from the web
xml.url <- 'http://www.w3schools.com/xml/plant_catalog.xml'

# download the xml file
xmlfile <- xmlTreeParse(xml.url)

# the xml file is now saved as an object you can easily work with in R:
class(xmlfile)

# Use the xmlRoot-function to access the top node
xmltop <- xmlRoot(xmlfile)

# have a look at the XML-code of the first subnodes:
print(xmltop)[1:2]

# To extract the XML-values from the document, use xmlSApply:
plantcat <- xmlSApply(xmltop, function(x) xmlSApply(x, xmlValue))

# Finally, get the data in a data-frame and have a look at the first rows and columns
plantcat_df <- data.frame(t(plantcat),row.names=NULL)
plantcat_df[1:5,1:4]

#### * Clean up temporary files ####
rm(list = ls(pattern = 'xml'))
rm(list = ls(pattern = 'fileName'))
rm(plantcat)
