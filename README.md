## Clone template

Before building, need to clone the template:
`faas template pull https://github.com/disarm-platform/faas-templates.git`

To run the R stuff in a container:

`docker run --rm -it --mount type=bind,source="$(pwd)"/R,target=/R locational/geopandas-r-base:2.0.0 Rscript -e "source('R/simplest.R'); simplest()"`