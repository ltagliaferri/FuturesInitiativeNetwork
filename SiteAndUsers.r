# Load RCurl package for downloading the data
library(RCurl)

# Install (as needed) and load networkD3 package
install.packages("networkD3")
library("networkD3")

# Gather raw JSON formatted data
URL <- "https://raw.githubusercontent.com/ltagliaferri/FuturesInitiativeNetwork/master/SiteAndUsers.json"
SiteAndUsersJson <- getURL(URL, ssl.verifypeer = FALSE)

# Convert JSON arrays into data frames
SiteAndUsersLinks <- JSONtoDF(jsonStr = SiteAndUsersJson, array = "links")
SiteAndUsersNodes <- JSONtoDF(jsonStr = SiteAndUsersJson, array = "nodes")

# Create force network from links and nodes
forceNetwork(Links = SiteAndUsersLinks, Nodes = SiteAndUsersNodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 0.9)

forceNetwork(Links = SiteAndUsersLinks, Nodes = SiteAndUsersNodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", width = 2000, height = 1500,
             opacity = 0.9, zoom = FALSE)
