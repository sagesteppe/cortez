# cortez
Geographic data from Steinbeck and Ricketts 1940 trip.
This is the original R package, which includes the data cleaning, while the python package just includes the data. 

## Data Accuracy 

The original author is not a marine ecologist, nor nautically inclined; rather they appreciate the journey as a philosophical exploration of ecology. 

The goal of this package is to provide a readily available data set for cartographic activities. 
In particular, a data set composed of point, and linestring geometries, rather than polygons for typical chloropleth applications - such as the North Carolina SIDS data set which comes with sf. 
Additional advantages of the data set is that it follows a sequential series of events, allowing for intelligent use of story map, interactive, or animations. 

Consider the package very alive, which is to say I am very happy to merge increasingly accurate collection localities, or routes. 
I have only read the *Log form the Sea of Cortez*, and not *Sea of Cortez: A Leisurely Journal of Travel and Research*, or any of the other true catalogs from the voyage. 
I have quickly poked through Sagarin et al. 2008 *Remembering the Gulf: changes to the marine communities of the Sea of Cortez since the Steinbeck and Ricketts expedition of 1940*, locations which they were able to verify are included (see their Supplemental Information 1), locations they could not relocate I came up with on my own. 
The latter are not intended to be accurate. 

The 'route' of the Western Flyer is liberally digitized and redrawn from Penguin Classics 1995 edition of *The Log from the* Sea of Cortez; of which I am not sure of the actual accuracy of. 
I further embellished curvatures and shapes to make the data set aesthetically appealing. 
If you think you know the real route, as I guess would have been supplied by the *Flyer*, let me know and I am happy to try and digitize it when I can find the time. 
However, if that happens, I will maintain both the aesthetic, and the authentic routes as data sets in the package. 

Note that (Amanda Chengs delightful story map)[https://storymaps.arcgis.com/stories/a65d2eacff1d4bd7b59796edff1f2211] helped me pinpoint some general localities, although we differ slightly on some aspects. 

## Contributing

As mentioned, I use this data set for testing our cartographic approaches. 
If you are a marine biologist, into data viz, or mariner and think you have some insight - but are hesitant about this whole Github thing - shoot me an email and we'll try and figure out how to incorporate your insight. 

## Works Cited

Brusca, Richard C. "The 1940 Ricketts-Steinbeck Sea of Cortez Expedition, with annotated lists of species and collection sites." Journal of the Southwest 62, no. 2 (2020): 218-334.

[freely available here](https://naturalhistory.si.edu/sites/default/files/media/file/brusca2020seaofcortezexpeditionwithjswfrontmatter.pdf)

Sagarin, Raphael D., William F. Gilly, Charles H. Baxter, Nancy Burnett, and Jon Christensen. "Remembering the Gulf: changes to the marine communities of the Sea of Cortez since the Steinbeck and Ricketts expedition of 1940." Frontiers in Ecology and the Environment 6, no. 7 (2008): 372-379.

[An open-access *nearly* final version is here](https://www.geo.arizona.edu/rcncrd/documents/Remembering_the_Gulf_Pub_Fe_08.pdf)

Steinbeck, John. The log from the Sea of Cortez. Penguin, 1995 

[Available from][your local library](https://www.mapdevelopers.com/us-public-library-map.php), [an independent bookstore](https://www.theindependentbookseller.com/bookstore-map.html), or [Barnes & Noble](https://stores.barnesandnoble.com/?view=map). 
