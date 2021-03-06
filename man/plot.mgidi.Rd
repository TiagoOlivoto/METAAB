% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mgidi.R
\name{plot.mgidi}
\alias{plot.mgidi}
\title{Plot the multi-trait genotype-ideotype distance index}
\usage{
\method{plot}{mgidi}(
  x,
  SI = 15,
  radar = TRUE,
  type = "index",
  position = "fill",
  rotate = FALSE,
  genotypes = "selected",
  n.dodge = 1,
  check.overlap = FALSE,
  x.lab = NULL,
  y.lab = NULL,
  title = NULL,
  arrange.label = FALSE,
  size.point = 2.5,
  size.line = 0.7,
  size.text = 10,
  width.bar = 0.75,
  col.sel = "red",
  col.nonsel = "gray",
  legend.position = "bottom",
  ...
)
}
\arguments{
\item{x}{An object of class \code{mgidi}}

\item{SI}{An integer (0-100). The selection intensity in percentage of the
total number of genotypes.}

\item{radar}{Logical argument. If true (default) a radar plot is generated
after using \code{coord_polar()}.}

\item{type}{The type of the plot. Defaults to \code{"index"}. Use \code{type = "contribution"} to show the contribution of each factor to the MGIDI
index of the selected genotypes/treatments.}

\item{position}{The position adjustment when \code{type = "contribution"}.
Defaults to \code{"fill"}, which shows relative proportions at each trait
by stacking the bars and then standardizing each bar to have the same
height. Use \code{position = "stack"} to plot the MGIDI index for each
genotype/treatment.}

\item{rotate}{Logical argument. If \code{rotate = TRUE} the plot is rotated,
i.e., traits in y axis and value in the x axis.}

\item{genotypes}{When \code{type = "contribution"} defines the genotypes to
be shown in the plot. By default (\code{genotypes = "selected"} only
selected genotypes are shown. Use \code{genotypes = "all"} to plot the
contribution for all genotypes.)}

\item{n.dodge}{The number of rows that should be used to render the x labels.
This is useful for displaying labels that would otherwise overlap.}

\item{check.overlap}{Silently remove overlapping labels, (recursively)
prioritizing the first, last, and middle labels.}

\item{x.lab, y.lab}{The labels for the axes x and y, respectively. x label is
set to null when a radar plot is produced.}

\item{title}{The plot title when \code{type = "contribution"}.}

\item{arrange.label}{Logical argument. If \code{TRUE}, the labels are
arranged to avoid text overlapping. This becomes useful when the number of
genotypes is large, say, more than 30.}

\item{size.point}{The size of the point in graphic. Defaults to 2.5.}

\item{size.line}{The size of the line in graphic. Defaults to 0.7.}

\item{size.text}{The size for the text in the plot. Defaults to 10.}

\item{width.bar}{The width of the bars if \code{type = "contribution"}.
Defaults to 0.75.}

\item{col.sel}{The colour for selected genotypes. Defaults to \code{"red"}.}

\item{col.nonsel}{The colour for nonselected genotypes. Defaults to \code{"gray"}.}

\item{legend.position}{The position of the legend.}

\item{...}{Other arguments to be passed from  \code{\link[ggplot2:theme]{ggplot2::theme()}}.}
}
\value{
An object of class \verb{gg, ggplot}.
}
\description{
Makes a radar plot showing the multi-trait genotype-ideotype distance index
}
\examples{
\donttest{
library(metan)
model <- gamem(data_g,
               gen = GEN,
               rep = REP,
               resp = c(KW, NR, NKE, NKR))
mgidi_index <- mgidi(model)
plot(mgidi_index)
}


}
\author{
Tiago Olivoto \email{tiagoolivoto@gmail.com}
}
