#' Dimensional data on the Primarchs
#'
#' While technically only 30,000 years in the future, this is foundational
#' information for much of the subsequent 20,000.
#'
#' @format A tibble with 20 rows and the following fields:
#' \describe{
#'   \item{id}{dbl (Primary key) The primary key for the Primarch}
#'   \item{name}{chr The name of the Primarch}
#'   \item{discovery_date}{chr The approximate date the Primarch was rediscovered}
#'   \item{home_planet}{dbl (Foreign key) The ID of the planet on which the Primarch was rediscovered}
#'   \item{legion}{dbl (Foreign key) The ID of the Primarch's legion}
#' }
"d_primarchs"

#' Dimensional data on planets
#'
#' This table provides standard identification of planets for other tables to
#' connect to.
#'
#' @format A tibble with 20 rows and the following fields:
#' \describe{
#'   \item{id}{dbl (Primary key) The primary key for the planet}
#'   \item{is_special_code}{bool Denotes whether this is a 'special' code, such as Unknown or \[REDACTED\]. These are "sprinkled" throughout because, hey, there are a billion worlds, right? The Administratum deemed it inefficient to start numbering these from 999,999,999...}
#'   \item{name}{chr The name by which the planet is best known.}
#' }
"d_planets"

#' Dimensional data on the Legiones Astartes
#'
#' While technically only 30,000 years in the future, this is foundational
#' information for much of the subsequent 20,000.
#'
#' @format A tibble with 20 rows and the following fields:
#' \describe{
#'   \item{id}{dbl The primary key for the legion}
#'   \item{numeral}{chr The Roman numeral that identifies the legion}
#'   \item{name}{chr The name of the legion}
#'   \item{loyalty}{chr The legion's status during and after the Horus Heresy}
#' }
#'
#' @source https://warhammer40k.fandom.com/wiki/Space_Marine_Legions
"d_legions"

#' Facts about the Legiones Astartes
#'
#' This provides key facts about the legions.
#'
#' @format A tibble with 20 rows and the following fields:
#' \describe{
#'   \item{legion}{dbl (Foreign key) The ID of the relevant legion}
#'   \item{date}{chr The approximate date of the observation}
#'   \item{strength}{dbl The approximate number of Space Marines in the legion}
#' }
#'
#' @source https://warhammer40k.fandom.com/wiki/Space_Marine_Legions
"f_legions"

#' Key dates and facts about them
#'
#' This provides key facts about interesting dates.
#'
#' @format A tibble with 20 rows and the following fields:
#' \describe{
#'   \item{date}{chr The approximate date of the observation}
#'   \item{note}{chr Notable occurrences}
#' }
#'
"f_dates"
