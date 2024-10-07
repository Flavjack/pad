library(agricolae)

# DCA ---------------------------------------------------------------------

# Definir los tratamientos (dosis de fertilización)
tratamientos <- c(0, 50, 100)

# Definir el número de repeticiones
repeticiones <- 5

# Generar el diseño completamente randomizado
dcr <- design.crd(tratamientos, r = repeticiones, seed = 123)

# Mostrar el diseño generado
print(dcr)

# Visualizar la estructura del diseño
dcr$book


# DBCA --------------------------------------------------------------------

library(agricolae)
library(tidyverse)

# fertilizante: 0, 50, 100
# cultivar: canchan y peruanita
trt<-c(3, 2) # factorial 3x2


outdesign <-design.ab(trt, r=4, design = "rcbd")
book<-outdesign$book

book %>% str()

ds <- book %>% 
  mutate(ferti = case_when(
    A %in% 1 ~ "0"
    ,  A %in% 2 ~ "50"
    ,  A %in% 3 ~ "100"
  )) %>% 
  mutate(cultivar = case_when(
    B %in% 1 ~ "canchan"
    ,  B %in% 2 ~ "peruanita"
  )) 


ds %>% 
  openxlsx::write.xlsx(file = "dbca.xlsx")

