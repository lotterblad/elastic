#' Search Elasticsearch instance using json POST documents 
#' 
#' @import httr 
#' @importFrom plyr compact
#' 
#' @template all
#' @details There are a lot of terms you can use for Elasticsearch. See here 
#'    \url{http://www.elasticsearch.org/guide/reference/query-dsl/} for the documentation.
#' @export
#' @examples \dontrun{
#' es_search(index="twitter")
#' es_search(index="twitter", type="tweet")
#' es_search(index="twitter", type="mention")
#' es_search(index="twitter", type="tweet", q="what")
#' es_search(index="twitter", type="tweet", sort="message")
#' 
#' # Search Index
#' es_search_v2(index="activity_instance", data=json_data, raw=TRUE)
#' 

es_search_v2 <- function(index=NULL, type=NULL, raw=FALSE, verbose=TRUE, callopts=list(), ...)
{
  elastic_POST(path = "_search", index, type, NULL, NULL, clazz = 'elastic_search', data=NULL, raw, callopts, ...)
}
