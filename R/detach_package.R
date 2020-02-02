#' Detach all versions of a package
#' 
#' @param pkg unquoted name of package you want to detach/unload
#' @param refcols A vector of the column names you would like to move to the left side of the dataframe (in order)
#' @export
detach_package <- function(pkg, character.only = FALSE)
{
  if(!character.only)
  {
    pkg <- deparse(substitute(pkg))
  }
  search_item <- paste("package", pkg, sep = ":")
  while(search_item %in% search())
  {
    detach(search_item, unload = TRUE, character.only = TRUE)
  }
}