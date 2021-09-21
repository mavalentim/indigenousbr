#' Indigenous Sanitary Districts' population
#'
#' The dataset, which comes from the Brazilian open information legislation,
#' "Lei de Acesso à Informação" showcases indigenous population values
#' in each of the 34 Indigenous Sanitary Districts, the so called "DSEI". The
#' data ranges from 2010 to 2019.
#'
#'
#' @format A dataset with 350 rows and 3 columns
#' \describe{
#'   \item{dsei}{Name of the Indigenous Sanitary District ('DSEI')}
#'   \item{year}{Year of the observation}
#'   \item{population}{Indigenous population living within the DSEI area, in
#'   traditional settlements}
#' }
#' @source Secretaria Especial de Saúde Indígena, SESAI. Lei de Acesso à
#' Informação
"dsei_population"



#' Indigenous Sanitary Districts' municipalities
#'
#' The dataset, which comes from the Brazilian open information legislation,
#' "Lei de Acesso à Informação" showcases in which municipality each Sanitary
#' District is located in. Different Sanitary Districts can be located in the
#' same municipality, e.g. Altamira municipality has 3 Sanitary Districts.
#'
#'
#' @format A dataset with 516 rows and 3 columns
#' \describe{
#'   \item{dsei}{Name of the Indigenous Sanitary District ('DSEI')}
#'   \item{municipality_id_6}{Municipality's 6 digit code, according to IBGE}
#'   \item{municipality_name}{Municipality's name}
#' }
#' @source Secretaria Especial de Saúde Indígena, SESAI. Lei de Acesso à
#' Informação
"dsei_municipalities"

#' Indigenous reported deaths, from 2010 to 2019
#'
#' The dataset, which comes from the Brazilian open information legislation,
#' "Lei de Acesso à Informação" display indigenous reported deaths in Brazil.
#' Each observation consists in a different death.Only indigenous living in
#' traditional settlements are considered.
#'
#'
#' @format A dataset with 29349 rows and 12 columns
#' \describe{
#'   \item{death_id}{Specific death identification code}
#'   \item{dsei}{Name of the Indigenous Sanitary District ('DSEI')}
#'   \item{base_pole_id}{Base pole in which the death was registered id}
#'   \item{base_pole_name}{Base pole in which the death was registered name}
#'   \item{municipality_id_6}{Municipality's 6 digit code, according to IBGE}
#'   \item{municipality_name}{Municipality's name}
#'   \item{state_abrev}{Brazilian state abbreviation}
#'   \item{sex}{Biological sex of the deceased}
#'   \item{age}{Age of the deceased}
#'   \item{death_date}{Date of the death, Year-Month-Day}
#'   \item{death_icd10}{Death's ICD10}
#'   \item{death_cause}{Official cause of death, in portuguese}
#'  }
#' @source Secretaria Especial de Saúde Indígena, SESAI. Lei de Acesso à
#' Informação
"indigenous_deaths"

#' Indigenous Sanitary Districts' sociodemographics
#'
#' The dataset, which comes from the Brazilian open information legislation,
#' "Lei de Acesso à Informação" showcases Indigenous Sanitary Districts'
#' sociodemographic aspects, from 2010 to 2020. The variables which are
#' displayed are 1)'ethinicities' which indicate the amount of indigenous
#' ethinicities within a single Sanitary District and 2)'settlements' which
#' indicate the number of indigenous settlements in a given Sanitary District
#' area.
#'
#'
#' @format A dataset with 374 rows and 4 columns
#' \describe{
#'   \item{dsei}{Name of the Indigenous Sanitary District ('DSEI')}
#'   \item{year}{Year of the observation}
#'   \item{ethinicities}{Number of indigenous ethinicities living in a given
#'   Sanitary District}
#'   \item{ethinicities}{Number of indigenous settlements within a given
#'   Sanitary District}
#' }
#' @source Secretaria Especial de Saúde Indígena, SESAI. Lei de Acesso à
#' Informação
"dsei_sociodemographics"
