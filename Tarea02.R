#Introduccion a los tipos de datos

encuestado_id <- 1045
ingreso <- 350000.50
miembros_hogar <- 4L
estado <- "Ocupado"
busca_trabajo <- FALSE

class(ingreso)
class(busca_trabajo)

#A2 Números y cadenas de Texto

horas_trabajadas <- 40.5
edad_anios <-28L
sector_actividad <- "Comercio"
categoria_ocupacional <- "Cuentapropista"

paste("Sector:", sector_actividad, "-", categoria_ocupacional)
grepl("propia", "Cuenta propia con local")

#A3. Booleanos y Operadores 
salario_mensual <- 450000
salario_anual <- salario_mensual * 13
es_mayor_edad <- edad_anios >=18
es_desocupado <- estado == "Desocupado"
es_pea <- (estado == "Ocupado" | estado == "Desocupado") & edad_anios >= 16

#A4 Toma de decisiones (if/else)

if (salario_mensual < 200000) {
  print("Por debajo del salario minimo")
} else if (salario_mensual >= 300000) {
  decil <- "Medio"
} else {
  decil <- "Bajo"
}
decil

# Bucles - While Loop

meses_busqueda <- 0
while (meses_busqueda < 3) {
  print (paste("Mes", meses_busqueda, ": Buscando empleo..."))
  meses_busqueda <- meses_busqueda + 1
}

meses_busqueda <- 0
while (TRUE) {
  meses_busqueda <- meses_busqueda + 1
  if (meses_busqueda == 2) {
    print("¡Empleo encontrado!")
    break 
  }
}

# A6 Bucles - Flor Loop

salarios_hora <- c(1500, 2200, 1800, 3100)
for (salario in salarios_hora) {
  print(salario * 8)
}
for (i in 1:length(salarios_hora)) {
  salarios_hora[i] <- salarios_hora[i] * 1.10
} 
salarios_hora

# A7 Vectores y Listas

edades_hogar <- c(45, 42, 16, 12)
promedio_edad <- mean (edades_hogar)
promedio_edad

jefe_hogar <- list (
  id = 101,
  nombre = "Carlos",
  edades_familia = edades_hogar,
  es_propietario = TRUE
)
jefe_hogar
promedio_edad

#Matrices y Arrays

datos_transicion <- c(80, 20, 15, 85)
matriz_transicion <- matrix(datos_transicion, nrow = 2, byrow = TRUE)
matriz_transicion

panel_laboral <- array(1:12, dim = c(2, 2, 3))
panel_laboral

#A9 Dara Frame
microdatos <- data.frame(
  id_persona = c(1, 2, 3),
  edad = c(34, 19, 52),
  ingreso = c(450000, 0, 780000),
  trabajo_semana_pasada = c(TRUE, FALSE, TRUE)
)
microdatos

#inspeccionamos en el data frame

str(microdatos)
summary(microdatos)  
microdatos$ingreso
microdatos

#A10 Factores
 
vector_estados <- c("Ocupado", "Desocupado", "Inactivo", "Ocupado")
estado_factor <- factor(vector_estados)

levels(estado_factor)

nivel_edu <- factor (c("Secundario", "Universitario", "Primario"),
                     levels = c("Primario", "Secundario", "Universitario"),
                     ordered = TRUE)
levels(estado_factor)
nivel_edu.
nivel_edu
nivel_edu
levels(estado_factor)
nivel_edu
























































