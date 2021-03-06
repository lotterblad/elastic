% Generated by roxygen2 (4.0.1): do not edit by hand
\name{es_index}
\alias{es_index}
\title{Start or stop indexing a document or many documents.}
\usage{
es_index(index = NULL, type = NULL, id = NULL, source = FALSE,
  fields = NULL, exists = FALSE, raw = FALSE, callopts = list(),
  verbose = TRUE, ...)
}
\arguments{
\item{dbname}{Database name. (character)}

\item{endpoint}{the endpoint, defaults to localhost (http://127.0.0.1)}

\item{port}{port to connect to, defaults to 9200}

\item{what}{One of start (default) of stop.}
}
\description{
Start or stop indexing a document or many documents.
}
\details{
The function returns TRUE. Though note that this can result even
   if the database does not exist in CouchDB.
}
\examples{
\dontrun{
es_index(index='twitter', type='tweet', id=10)
}
}
\references{
See docs for the Elasticsearch River plugin \url{#} that lets you
    easily index CouchDB databases.
}

