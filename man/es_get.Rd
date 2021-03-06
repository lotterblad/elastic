% Generated by roxygen2 (4.0.1): do not edit by hand
\name{es_get}
\alias{es_get}
\title{Get documents via the get API.}
\usage{
es_get(index = NULL, type = NULL, id = NULL, source = FALSE,
  fields = NULL, exists = FALSE, raw = FALSE, callopts = list(),
  verbose = TRUE, ...)
}
\arguments{
\item{index}{Index}

\item{type}{Document type}

\item{raw}{If TRUE (default), data is parsed to list. If FALSE, then raw JSON.}

\item{callopts}{Curl args passed on to httr::POST.}

\item{verbose}{If TRUE (default) the url call used printed to console.}

\item{...}{Further args passed on to elastic search HTTP API as parameters.}

\item{id}{Document id}

\item{source}{XXX}

\item{fields}{Fields to return from the response object.}

\item{exists}{XXX}
}
\description{
Get documents via the get API.
}
\details{
There are a lot of terms you can use for Elasticsearch. See here
   \url{http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/docs-get.html} for
   the documentation.
}
\examples{
\dontrun{
es_get(index='twitter', type='tweet', id=1)
es_get(index='mran', type='metadata', id='taxize')
es_get(index='mran', type='metadata', id='taxize', source=TRUE)

# Get certain fields
es_get(index='twitter', type='tweet', id=1, fields='user')

# Just test for existence of the document
es_get(index='twitter', type='tweet', id=1, exists=TRUE)
es_get(index='mran', type='metadata', id='taxize', exists=TRUE)
}
}

