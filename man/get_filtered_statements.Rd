% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_filtered_statements.R
\name{get_filtered_statements}
\alias{get_filtered_statements}
\title{Retrieve filtered statements from a database}
\usage{
get_filtered_statements(dbname = 'sejmrp', user = 'reader',
  password = 'qux94874', host = 'services.mini.pw.edu.pl',
  windows = .Platform$OS.type == 'windows', terms_of_office = integer(0), 
  deputies = character(0), dates = character(0), topics = character(0),
  content = character(0), max_rows = Inf)
}
\arguments{
\item{dbname}{name of database; default: 'sejmrp'}

\item{user}{name of user; default: 'reader'}

\item{password}{password of database; default: 'qux94874'}

\item{host}{name of host; default: 'services.mini.pw.edu.pl'}

\item{windows}{information of used operation system; default: .Platform$OS.type == 'windows'}

\item{terms_of_office}{range of terms of office's numbers that will be taken to filter data
from database; default: integer(0)}

\item{deputies}{full names of deputies that will be taken to filter data from database;
default: character(0)}

\item{dates}{period of time that will be taken to filter data from database;
default: character(0)}

\item{topics}{text patterns that will be taken to filter data from database;
default: character(0)}

\item{content}{text patterns that will be taken to filter data from database;
default: character(0)}

\item{max_rows}{maximum number of rows to download; default: Inf}
}
\value{
data frame with NULL
}
\description{
Function \code{get_filtered_statements} reads filtered statements from a database.
}
\details{
Function \code{get_filtered_statements} reads filtered statements from a database.
The result of this function is an invisible data frame with statements' data.

Possible filters:
\enumerate{
\item terms_of_office - range of terms of office's numbers. This filter is a integer
vector with two elements, where the first describes a left boundary of range
and the second a right boundary. It is possible to choose only one term of office,
just try the same number as first and second element of vector.
\item deputies - full names of deputies. This filter is a character vector with full
names of deputies in format: 'surname first_name second_name'. If you are not sure
if the deputy you were thinking about has second name, try 'surname first_name' or
just 'surname'. There is high probability that proper deputy will be chosen.
It is possible to choose more than one deputy.
\item dates - period of time. This filter is a character vector with two elements
in date format 'YYYY-MM-DD', where the first describes left boundary of period and
the second right boundary. It is possible to choose only one day, just try the same
date as first and second element of vector.
\item topics - text patterns. This filter is a character vector with text patterns of
topics in order points. Note that the order points are written like
sentences, so remember about case inflection of nouns and adjectives and use stems of
words as patterns. For example if you want to find order points about education 
(in Polish: szkolnictwo) try 'szkolnictw'. It is possible to choose more than one pattern.
\item content - text patterns. This filter is a character vector with text patterns
in statements. Note that strings with statements are sentences, so remember about case
inflection of nouns and adjectives and use stems of words as patterns. 
For example if you want to find order points about education (in Polish:
szkolnictwo) try 'szkolnictw'. It is possible to choose more than one pattern.}

If you did not choose any filter, the whole database will be downloaded.
Note that, due to data size (<= ~150 MB) it may take few seconds / minutes
to download all statements.

Because of encoding issue on Windows operation system, you also need to select
if you use Windows.
}
\note{
Default parameters use privilages of 'reader'. It can only SELECT data from database.

All information is stored in PostgreSQL database.
}
\examples{
\dontrun{
filtered_statements <- get_filtered_statements()
dim(filtered_statements)
# [1] 2568       6
names(filtered_statements)
[1] 'id_statement' 'nr_term_of_office' 'surname_name' 'date_statement'
[5] 'titles_order_points' 'statement'
object.size(filtered_statements)
# 6488552 bytes}

}
\author{
Tomasz Mikolajczyk, Piotr Smuda
}

