# -----------------------------------------------------------------------------
# Funcion que devuelve plot de mapa de alguna variable meteorologica
# -----------------------------------------------------------------------------

grafica.mapa <- function(mar.inf, mar.izq, mar.sup, mar.der,
                         long, lat, z,
                         rango.x, rango.y,
                         col, breaks, lab.breaks, titulo.mapa,
                         mapa.base.1, mapa.base.2)
  
  {
   # margenes figura: inferior, izquierda, superior y derecha
   par(mar = c(mar.inf, mar.izq, mar.sup, mar.der))
  
   return(list(
               # grafica la variable
               image(x = long, y = lat, z = t(z), 
                     xlim = rango.x, 
                     ylim = rango.y, 
                     col = paleta,
                     breaks = categorias,
                     las = 1,
                     main = titulo.mapa,
                     cex.main = 1.7, cex.axis = 1.5), 
               
               # genera mapa base
               plot(mapa.base.1, axes = TRUE, border = '#050c05', add = TRUE),
               plot(mapa.base.2, axes = TRUE, border = '#006400', lwd = 4, add = TRUE),
               
               par(cex = 1.2),
               
               # leyenda de figura
               image.plot(zlim = c(0, 400),
                          legend.only = TRUE, 
                          col = paleta,
                          lab.breaks = categorias.lab,
                          add = TRUE,
                          legend.mar = 6.0, legend.width = 2.0, legend.shrink = 0.9)
               
               )
         )
  
  }
