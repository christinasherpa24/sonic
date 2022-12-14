globalVariables(c("country_territory", "population_2020", "population_2015", "population_2010", "population_2000", "world_population", "population_2022"))

#' World Population (Between 2000-2022)
#'@description this function takes in a a country/territory and returns the population of the country for the years 2000, 2010,2015 and 2022
#' @param X is a country/territory that a user inputs of their choice
#'
#' @return a numeric vector that is the population of a country/territory for the years 2000, 2010,2015 and 2022
#'
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom dplyr "select"
#'
#' @examples
#' country_population("Albania")
#'
#' country_population("Algeria")
#'
#' country_population("Afghanistan")
#'
#' @export
#

country_population <- function(X){
  if (!(X %in% world_population$country_territory)){
    stop("This country does not exist in the world population dataset. Check for misspellings or run world_population$country_territory to see a list of all country names.")
  }
  population_user <- world_population %>%
    filter(country_territory == X) %>%
    select(country_territory, population_2022, population_2015, population_2010, population_2000)

  return(population_user)
}

