# -------------------------------------------------------------------------
# Importanción de base de datos -------------------------------------------
# -------------------------------------------------------------------------


# importar csv ------------------------------------------------------------

csvdt <- read.csv(file = "data/LA MOLINA 2014 POTATO WUE (FB) - fb.csv")


# importar tsv ------------------------------------------------------------

datos <- read.delim("data/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv"
                    , sep = "\t", header = TRUE)

# import xlsx -------------------------------------------------------------

library(openxlsx)

dtxlsx <- openxlsx::read.xlsx(xlsxFile = "data/LA MOLINA 2014 POTATO WUE (FB).xlsx"
                              , sheet = "fb")


# importar RStudio --------------------------------------------------------

library(readxl)

fb <- read_excel("data/LA MOLINA 2014 POTATO WUE (FB).xlsx", 
                                            sheet = "fb")
View(fb)

# imporat de Google Sheets

library(inti) # autentificar con google
library(googlesheets4)

url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"

gs <- as_sheets_id(url)

fb <- googlesheets4::range_read(ss = gs, sheet = "fb")























