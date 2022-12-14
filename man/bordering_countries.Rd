% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bordering_countries.R
\name{bordering_countries}
\alias{bordering_countries}
\title{bordering_countries Function}
\usage{
bordering_countries(user_country_name)
}
\arguments{
\item{user_country_name}{: A country of your choosing from the bordering_countries data set (contains all countries)}
}
\value{
a dataset of countries that border the chosen one
}
\description{
A function that takes in a country name in quotes ("") and returns a dataset of the countries that border it.
}
\examples{

bordering_countries("Albania")

bordering_countries("China")


}
