#' Check RAM use and availability
#'
#' @export
#' @examples
#' checkmem()
checkmem <- function(){
  a <- dipsaus::mem_limit2()
  b <- dff(GB = round(unlist(a)/1e9, 2)) %>% 
    tibble::rownames_to_column('RAM')
  b
}
