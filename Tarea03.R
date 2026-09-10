library(tidyverse)
library(palmerpenguins)
library(ggthemes)

# Ejercicio seccion 1.2.5 visualización 
# 1.¿Cuantas filas y columnas tiene penguins?
nrow(penguins)
ncol(penguins)

# 2.¿Que describe bill_depth_mm?
?penguins
# bill_depth_mm Profundidad del pico del pinguino (mm)

# 3. Diagrama de dispersión de bill_depth_mm vs.  bill_length_mm
ggplot(data = penguins, mapping = aes(x = bill_length_mm, y = bill_depth_mm)) + 
  geom_point()
#podemos obervar que hay dos grupos un con mayor profundidad y otros con menor profundidad, a mayor profundidad
#menor longitud y a menor profundidad mayor longitud

# 4 Scatterplot species vs bill_depth_mm
ggplot(data = penguins, mapping = aes(x = species, y = bill_depth_mm)) +
  geom_point()

ggplot(data = penguins, mapping = aes(x = species, y = bill_depth_mm)) +
  geom_boxplot()
#Usar geom_point() me parece menos precisio que usar geom_boxplot (para combinacion de variables)

# ¿Por que da error y como corregirlo?
ggplot(data = penguins) + 
  geon_point() 
#Este codigo me da error por que le falta la fijacion de variables mapping = aes()


# 6. na.rm en geom_point
ggplot(data = penguins, mapping = aes (x = bill_length_mm, y = bill_depth_mm )) +
  geom_point(na.rm = TRUE)

# 7. Agregar caption con labs()
ggplot(data = penguins, mapping = aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(na.rm = TRUE) +
  labs(caption = "Data come from the palmerpenguins package")
#Agregar descripcion plot.

# 8. Visualizacion color
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, body_mass_g)) +
  geom_point(mapping = aes(color = bill_depth_mm)) +
  geom_smooth()

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

# 10. Comparacion 

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_smooth(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )

# Los dos graficos se ven iguales no hay diferencia donde escriba data no estaria dandome una variacion 
# el estido de escritura 
 



# Ejercicio 1.4 visualizacion ---------------------------------------------

# 1. Grafico de barras species y pinguins - asignacion species a la estetica
ggplot(penguins, aes(y=species)) +
  geom_bar()
#Las barras se muestran horizontalmente.

# 2. ¿Diferencia de graficos
ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")

ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")
# fill lo utilizaria para colorear toda la barra

# 3 ¿Qué hace el binsargumento geom_histogram()?
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(bins = 10)
# Divide el rango  del histogram 

# 4 histogram carat 
ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.1)

ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.9)
#mientras mas crece binwith se hace mas grande las barras se suavizan o hay menos fluctuacion 
#agrupa un rango mas amplio de valores



# Relaciones entre variables 1.5 visualizacion  ---------------------------

# 1. Qué variables mpgson categóricas? ¿Qué variables son numéricas?
?mpg
mpg
glimpse(mpg)

# 2. Diagrama
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy, color = cty)) +
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy, size = cty)) +
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy, color = cty, size = cty)) +
  geom_point()


# 3. diagrama de dispersión de hwyvs.  displ
ggplot(mpg, aes(x = displ, y = hwy, linewidth = cty)) +
geom_point()

# 4. ¿Qué sucede si asignas la misma variable a múltiples estéticas?
ggplot(mpg, aes(x = displ, y = hwy, color =drv, shape = drv)) +
  geom_point()

# 5. diagrama de dispersión de bill_depth_mmvs.  bill_length_mm
ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point()
 
# 6. ¿Por qué aparecen dos leyendas separadas? ¿Cómo lo solucionarías para combinarlas?
ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species
  )
) +
  geom_point() +
  labs(color = "Species")

# 7. 
ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")
#que porcentaje de cada especie hay

ggplot(penguins, aes(x = species, fill = island)) +
  geom_bar(position = "fill")
#que porcentaje de cada isla habita cada especie


# Guardar 1.6 -------------------------------------------------------------

# 1. Formato de guardado
ggplot(mpg, aes(x = class)) +
  geom_bar()

ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point()

ggsave("mpg-plot.png")
 # Se guarda el ultimo ya que por defecto ggsave guarda el ultimo grafico 

# 2. Que tipos de imagenes funcionaria con ggsave
ggsave("mpg-plot.pdf")
#Cambiando la extension del nombre archivo 


























