## code to prepare `original-datasets` dataset goes here

#DSEI population through the years
dsei_population<- rio::import("data-raw/Recurso Demografico 2010-2019.xlsx",
                              sheet = 'DEMOGRAFICO') %>%
  tidyr::pivot_longer('2010':'2019') %>%
  dplyr::rename( 'dsei' = 'DSEI',
                 'year' = 'name',
                 'indigenous_pop'='value')

#In which Brazilian municipality is each DSEI located on?
dsei_municipalities <- rio::import("data-raw/Recurso Demografico 2010-2019.xlsx",
                                                     sheet = 'MUNICIPIO') %>%
  dplyr::rename('dsei' = 'DSEI_GESTAO',
                'municipality_id_6' = 'CO_MUNICIPIO_IBGE',
                'municipality_name' = 'NO_MUNICIPIO')


#Indigenous deaths

indigenous_deaths <- rio::import('data-raw/obitodadecada.xlsx',
                                 skip = 9) %>%
  dplyr::rename('death_id' = 'CO_SEQ_OBITO',
                'dsei' = 'DSEI_GESTAO',
                'base_pole_id' = 'COD_POLO_BASE',
                'base_pole_name' = 'DS_POLO_BASE',
                'municipality_id_6' = 'CO_MUNICIPIO_IBGE',
                'municipality_name' =	'NO_MUNICIPIO',
                'state_abrev' = 'SG_UF',
                'sex' = 'TP_SEXO',
                'age' = 'IDADE_OBITO_ANOS',
                'death_date' = 'DT_OBITO',
                'death_icd10' = 'CO_CID10',
                'death_cause' = 'CAUSA_ÓBITO') %>%
  dplyr::select(-`...13`) %>%
  dplyr::mutate(year = lubridate::year(death_date))

#Sanitary districts' socio-demographic aspects

dsei_sociodemographics <- rio::import('data-raw/saudeinfra.xlsx',
                                    sheet = 'aldeias')%>%
  tidyr::pivot_longer('2010':'2019') %>%
  dplyr::rename( 'dsei' = 'DSEI',
                 'year' = 'name',
                 'settlements'='value') %>%
  dplyr::full_join(y= rio::import('data-raw/saudeinfra.xlsx',
                       sheet = 'etnia')%>%
               tidyr::pivot_longer('2010':'2020') %>%
               dplyr::rename( 'dsei' = 'DSEI',
                              'year' = 'name',
                              'ethnicities'='value') %>%
                 dplyr::select(dsei, year, ethnicities),
             by = c('dsei', 'year')) %>%
  dplyr::filter(dsei != "Total Geral",
                dsei != "TOTAL DE ETNIAS",
                dsei != is.null(dsei))

usethis::use_data(original-datasets, overwrite = TRUE)
