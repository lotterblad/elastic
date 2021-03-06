% Generated by roxygen2 (4.0.1): do not edit by hand
\name{es_aliases}
\alias{es_aliases}
\title{Get a list of your indices, just the names.}
\usage{
es_aliases(callopts = list(), raw = FALSE, verbose = TRUE, ...)
}
\arguments{
\item{callopts}{Curl args passed on to httr::GET.}

\item{raw}{If TRUE (default), data is parsed to list. If FALSE, then raw JSON.}

\item{verbose}{If TRUE (default) the url call used printed to console.}

\item{...}{Further args passed on to elastic search HTTP API as parameters.}
}
\description{
See \code{es_status} for more details on indices.
}
\examples{
\dontrun{
es_aliases()
es_aliases(raw=TRUE)
}
}
\seealso{
\link{es_status}
}

