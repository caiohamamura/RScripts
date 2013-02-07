require(raster)

img = stack('D:/Caio/RioClaro/rcteste_kuwahara.tif')
ndvi = round((((img[[1]]-img[[2]])/(img[[2]]+img[[1]]))+1)*(255/2))
writeRaster(ndvi, 'D:/Caio/RioClaro/rcteste_ndvi_kuwahara.tif', datatype='INT1U')