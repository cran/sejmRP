% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/votings_update_table.R
\name{votings_update_table}
\alias{votings_update_table}
\title{Updating table with votings}
\usage{
votings_update_table(dbname, user, password, host,
  nr_term_of_office = 8, verbose = FALSE)
}
\arguments{
\item{dbname}{name of database}

\item{user}{name of user}

\item{password}{password of database}

\item{host}{name of host}

\item{nr_term_of_office}{number of term of office of Polish Diet; default: 8}

\item{verbose}{if TRUE then additional info will be printed}
}
\value{
invisible NULL
}
\description{
Function \code{votings_update_table} updates table with votings.
}
\note{
All information is stored in PostgreSQL database.
}
\examples{
\dontrun{
votings_update_table(dbname, user, password, host)}

}
\author{
Piotr Smuda
}

