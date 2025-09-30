# -------------------------------------------------------------------------
# Funciones ---------------------------------------------------------------
# -------------------------------------------------------------------------


x <- "Hola"
y <- "UNTRM"

paste(x, y)


saludo <- function() {
  
  x <- "Hola"
  y <- "UNTRM"
  
  paste(x, y) 
  
}

saludo()


# -------------------------------------------------------------------------

saludo2 <- function(quien) {
  
  x <- "Hola"
  y <- quien
  
  paste(x, y) 
  
}

saludo2(quien = "FICA")
saludo2(quien = "JUAN")

# -------------------------------------------------------------------------

saludo3 <- function(texto, quien) {
  
  x <- texto
  y <- quien
  
  paste(x, y) 
  
}

saludo3(texto = "como estas", quien = "FICA")

# -------------------------------------------------------------------------

# funcion para calcular la nota de la unidad 1
# PA = 30%, AC = 20%, y EX = 50
# Crear una función donde me de la media ponderada

nota <- function(PA, AC, EX) {
  
  x <- PA*0.3
  y <- AC*0.2
  z <- EX*0.5
  
  x + y + z
  
}

nota(PA = 18, AC = 15, EX = 8)

# -------------------------------------------------------------------------

# Crear una función para determinar el area 
# de un circunferencia
# el usuario debe selecionar si es en cm o mm


area_cir <- function(radio, unidad = "cm") {
  
  if(unidad == "cm") {
    
    pi*radio^2
    
  } else if (unidad == "mm") {
    
    pi*radio^2*10
    
  }
  
}

area_cir(2, unidad = "mm")



















