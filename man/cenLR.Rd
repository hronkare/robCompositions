% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cenLR.R
\name{cenLR}
\alias{cenLR}
\title{Centred log-ratio transformation}
\usage{
cenLR(x, base = exp(1))
}
\arguments{
\item{x}{multivariate data ideally of class data.frame or matrix}

\item{base}{a positive or complex number: 
the base with respect to which logarithms are computed. Defaults to \code{exp(1)}.}
}
\value{
The transformed data, including \item{x.clr}{clr transformed data}
\item{gm}{the geometric means of the original composition.}
}
\description{
The cenLR transformation moves D-part compositional data from the simplex
into a D-dimensional real space.
}
\details{
Each composition is divided by the geometric mean of its parts before the
logarithm is taken.
}
\note{
The resulting transformed data set is singular by definition.
}
\examples{

data(expenditures)
eclr <- cenLR(expenditures)
inveclr <- cenLRinv(eclr)
head(expenditures)
head(inveclr)
head(pivotCoordInv(eclr$x.clr))

}
\references{
Aitchison, J. (1986) \emph{The Statistical Analysis of
Compositional Data} Monographs on Statistics and Applied Probability.
Chapman \& Hall Ltd., London (UK). 416p.
}
\seealso{
\code{\link{cenLRinv}}, \code{\link{addLR}}, \code{\link{pivotCoord}},
\code{\link{addLRinv}}, \code{\link{pivotCoordInv}}
}
\author{
Matthias Templ
}
\keyword{manip}
