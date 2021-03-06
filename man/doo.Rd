% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{doo}
\alias{doo}
\title{Alternative to dplyr::do for doing anything}
\usage{
doo(.data, .fun, ..., unnest = TRUE)
}
\arguments{
\item{.data}{a (grouped) data frame}

\item{.fun}{A function, formula, or atomic vector.}

\item{...}{Additional arguments passed on to \code{.fun}}

\item{unnest}{Logical argument defaults to \code{TRUE} to control if results
of \code{.fun} should be unnested. Valid only if the result is of class
\code{data.frame} or \code{tbl_df}.}
}
\value{
a data frame
}
\description{
Provides an alternative to the \code{dplyr:do()} using \code{nest()},
\code{mutate()} and \code{map()} to apply a function to a grouped data frame.
}
\details{
If the applied function returns a data frame, then the output will be
automatically unnested. Otherwise, the output includes the grouping
variables and a column named "data" , which is a "list-columns" containing
the results for group combinations.
}
\examples{
\donttest{
library(metan)
# Head the first two lines of each environment
data_ge2 \%>\%
 group_by(ENV) \%>\%
 doo(~head(., 2))

# Genotype analysis for each environment using 'gafem()'
# variable PH
data_ge2 \%>\%
  group_by(ENV) \%>\%
  doo(~gafem(., GEN, REP, PH, verbose = FALSE))
}
}
\author{
Tiago Olivoto \email{tiagoolivoto@gmail.com}
}
