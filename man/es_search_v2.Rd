\name{es_search_v2}
\alias{es_search_V2}
\title{Search Elasticsearch instance using json POST documents}
\usage{
es_search_v2(index = NULL, type = NULL, data=NULL, raw = FALSE, verbose = TRUE, ...)
}
\arguments{
\item{index}{Index}

\item{type}{Document type}

\item{data}{Curl -d args passed to elasticsearch}

\item{raw}{If TRUE (default), data is parsed to list. If FALSE, then raw JSON.}

\item{verbose}{If TRUE (default) the url call used printed to console.}

\item{...}{Further args passed on to elastic search HTTP API as parameters.}
}
\description{
Search Elasticsearch instance using json POST documents 
}
\details{
There are a lot of terms you can use for Elasticsearch. See here
   \url{http://www.elasticsearch.org/guide/reference/query-dsl/} for the documentation.
}
\examples{
\dontrun{
es_search_v2(index="activity_instance", type="jdbc", data='{"size":100,"query": {"match_all": {}}}')

# Get raw data
es_search_v2(index="activity_instance", type="jdbc", data='{"size":100,"query": {"match_all": {}}}', raw=TRUE)

# Curl debugging
library('httr')
es_search_v2(index="activity_instance", type="jdbc", data='{"size":100,"query": {"match_all": {}}}')
}
}

