% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rSDev.R
\name{rSDev}
\alias{rSDev}
\title{Relative simplicial deviance}
\usage{
rSDev(x, y)
}
\arguments{
\item{x}{a propability table}

\item{y}{an interaction table}
}
\value{
The relative simplicial deviance
}
\description{
Relative simplicial deviance
}
\examples{
data(precipitation) 
tabprob <- prop.table(precipitation)
tabind <- indTab(precipitation)
tabint <- intTab(tabprob, tabind)
rSDev(tabprob, tabint$intTab)
}
\references{
Juan Jose Egozcuea, Vera Pawlowsky-Glahn, Matthias Templ, Karel Hron (2015)
Independence in Contingency Tables Using Simplicial Geometry. 
\emph{Communications in Statistics - Theory and Methods}, Vol. 44 (18), 3978--3996.
DOI:10.1080/03610926.2013.824980
}
\author{
Matthias Templ
}
