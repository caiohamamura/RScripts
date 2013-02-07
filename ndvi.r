require(raster)
args <- commandArgs(trailingOnly = TRUE)

setOptions('GTiff')
img = stack(args[1])
ndvi = round((((img[[1]]-img[[2]])/(img[[2]]+img[[1]]))+1)*(255/2))
writeRaster(ndvi, args[2], datatype='INT1U')