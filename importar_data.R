# -------------------------------------------------------------------------
# importar datos ----------------------------------------------------------
# -------------------------------------------------------------------------

# importar csv ------------------------------------------------------------

library(readr)
dtx <- read_csv("C:/Users/LENOVO/Downloads/LA MOLINA 2014 POTATO WUE (FB) - fb (1).csv")
View(dtx)


# importar xlsx -----------------------------------------------------------

library(readxl)
db <- read_excel("C:/Users/LENOVO/Downloads/LA MOLINA 2014 POTATO WUE (FB).xlsx", 
                 sheet = "fb")
View(db)

library(readxl)
bd <- read_excel("C:/Users/LENOVO/Downloads/LA MOLINA 2014 POTATO WUE (FB).xlsx", 
                 sheet = "fb")
View(bd)


# google sheets -----------------------------------------------------------

library(googlesheets4)
library(tidyverse)

# 1. darle el url
# 2. Extraer información de la hoja de calculo
# 3. Importar hoja de calculo

url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"

gs <- url %>% 
  as_sheets_id()

fb <- gs %>% 
  range_read(sheet = "fb")


