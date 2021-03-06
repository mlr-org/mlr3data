% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kc_housing.R
\docType{data}
\name{kc_housing}
\alias{kc_housing}
\alias{mlr_tasks_kc_housing}
\title{House Sales in King County}
\source{
\url{https://www.kaggle.com/harlfoxem/housesalesprediction}
}
\description{
Regression task to predict house sale prices for
King County, including Seattle, between May 2014 and May 2015.

Contains 19 features and 21613 observations.
Target column is \code{"price"}.
}
\section{Pre-processing}{

\itemize{
\item Id column has been removed.
\item Dates in column \code{"date"} have been converted from strings to \link{POSIXct}.
\item Values \code{0} in feature \code{"yr_renovated"} have been replaced with \code{NA}.
\item Values \code{0} in feature \code{"sqft_basement"} have been replaced with \code{NA}.
\item Feature \code{"waterfront"} has been converted to logical.
}
}

\examples{
data("kc_housing", package = "mlr3data")
str(kc_housing)
}
\keyword{data}
