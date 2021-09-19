#' Get indigenous covid stats
#'
#' This function web scrapes the official Brazilian website for covid among
#' indigenous people. The function has no parameters, and it only returns a
#' tibble with the most updated covid-19 stats, such as confirmed and suspect
#' cases, clinically cured patients and deaths caused by covid-19.
#'
#'
#' @return The function returns a tibble. It with 35 rows, each accounting for
#' one Sanitary District and one for the summarized amounts among all of them.
#' The tibble has 8 variables which characterize the covid situation in each of
#' the Districts.
#'
#' @export

get_indigenous_covid_stats <- function(){
  covid_results <- rvest::read_html('http://www.saudeindigena.net.br/coronavirus/mapaEp.php') %>%
    rvest::html_table()

  covid_results[[1]] %>%
    dplyr::rename(dsei_id = `Cod. DSEI`,
                  dsei = DSEI,
                  suspect_cases = Suspeitos,
                  confirmed_cases = Confirmados,
                  discarded_cases = Descartados,
                  currently_infected = `Infectados (atual)`,
                  clinically_cured = `Cura Clínica`,
                  deaths = `Óbitos`)
}

class(get_indigenous_covid_stats())
