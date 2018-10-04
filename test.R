
#' 
#' Here's some prose in a very special comment. Let's summarize the built-in
#' dataset `VADeaths`.
## here is a regular code comment, that will remain as such
summary(VADeaths)

<<<<<<< HEAD
#' Here's some more prose. I can use usual markdown syntax to make things
#' **bold** or *italics*. Let's use an example from the `dotchart()` help to
#' make a Cleveland dot plot from the `VADeaths` data. I even bother to name
#' this chunk, so the resulting PNG has a decent name.
#+ dotchart
dotchart(VADeaths, main = "Death Rates in Virginia - 1940")
=======
## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write.csv(ist, here("data", "installed-packages.csv"))
## YES overwrite the file that is there now (or delete it first)
## that came from me (Jenny)
## it an example of what yours should look like and where it should go

# This is David making a change
>>>>>>> d9da1a3d8548c1116fbb2360901cf02723a6de25
