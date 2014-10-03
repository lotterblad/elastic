#' Wrappers around httr::POST and jsonlite for this package

#' @param path Elasticsearch API endpoint path
#' @param index Elasticsearch index
#' @param type Elasticsearch type
#' @param clazz Class to outupt
#' @param raw Raw JSON results as string
#' @param ... Further args passed to Elasticsearch
elastic_POST <- function(path, index=NULL, type=NULL, metric=NULL, node=NULL, 
                   clazz=NULL, data=NULL, raw, ...) 
{
  conn <- es_get_auth()
  url <- paste(conn$base, ":", conn$port, sep="")
  if(is.null(index) && is.null(type)){ url <- paste(url, path, sep="/") } else
    if(is.null(type) && !is.null(index)){ url <- paste(url, index, path, sep="/") } else {
      url <- paste(url, index, type, path, sep="/")    
    }
  
  if(!is.null(node)){
    url <- paste(url, paste(node, collapse = ","), sep = "/")
  }
  if(!is.null(metric)){
    url <- paste(url, paste(metric, collapse = ","), sep = "/")
  }  
  
  args <- es_compact(list(...))
  
  if(class(data) == 'json') {
      data <- rjson::fromJSON(data)
  }

  tt <- POST(url, body = data)
  if(tt$status_code > 202){
    if(tt$status_code > 202) stop(tt$headers$statusmessage)
    if(content(tt)$status == "ERROR") stop(content(tt)$error_message)
  }
  res <- content(tt, as = "text")
  if(!is.null(clazz)){ 
    class(res) <- clazz
    if(raw) res else es_parse(res)
  } else { res }
}
