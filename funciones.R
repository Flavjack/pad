# FUnciones en R

saludo <- function(x, y) {
  
  paste(x, y)
  
}


saludo(x = "hola", y = "FICA")

saludo("Hola", "FICA")

# A = pi*r^2

area_circu <- function(radio) {
  
  if(!is.numeric(radio)) {
    
    paste(radio, "no es numerico")
    
  } else {
    
    radio*radio*pi
    
  }
  
}

area_circu(10)





# Función para calcular el área de una circunferencia
calcular_area_circunferencia <- function(radio, unidad = "cm") {
  
  # Validar que el radio sea un número positivo
  if (!is.numeric(radio) || radio <= 0) {
    stop("El radio debe ser un número positivo.")
  }
  
  # Convertir el radio a centímetros si la unidad es milímetros
  if (unidad == "mm") {
    radio <- radio / 10  # Convertir mm a cm
  } else if (unidad != "cm") {
    stop("La unidad debe ser 'cm' o 'mm'.")
  }
  
  # Calcular el área de la circunferencia
  area <- pi * radio^2
  
  # Devolver el área
  return(area)
}

calcular_area_circunferencia(radio = 5, unidad = "mm")





imc <- function(altura, peso) {
  
  rs <- peso/(altura^2)
  
  if(rs < 18.5) { print("Bajo peso") }
  
  if(rs >= 18.5 & rs <= 24.9) { print("Peso normal") }
  
  if(rs >= 25 & rs <= 29.9) { print("Sobre peso") }
  
  if(rs >= 30) { print("Obesidad") }
  
}


imc(altura = 1.8, 83)




Bajo peso: IMC < 18.5
Peso normal: IMC entre 18.5 y 24.9
Sobrepeso: IMC entre 25 y 29.9
Obesidad: IMC ≥ 30


# Función para calcular el IMC y clasificar según la OMS
calcular_imc <- function(peso, altura) {
  
  # Validar que el peso y la altura sean valores positivos
  if (!is.numeric(peso) || peso <= 0) {
    stop("El peso debe ser un número positivo.")
  }
  
  if (!is.numeric(altura) || altura <= 0) {
    stop("La altura debe ser un número positivo.")
  }
  
  # Calcular el IMC
  imc <- peso / (altura^2)
  
  # Clasificación del IMC según la OMS
  clasificacion <- if (imc < 18.5) {
    "Bajo peso"
  } else if (imc >= 18.5 && imc < 24.9) {
    "Peso normal"
  } else if (imc >= 25 && imc < 29.9) {
    "Sobrepeso"
  } else if (imc >= 30) {
    "Obesidad"
  }
  
  # Devolver el IMC y la clasificación
  return(list(IMC = imc, Clasificacion = clasificacion))
}

calcular_imc(peso = 83, altura = 1.8)











































