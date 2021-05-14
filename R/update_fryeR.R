#' Update this package from source
#' 
#' @export
update_fryeR <- function() {
  rm(list = ls())
  library("devtools")
  unload(pkgload::inst("fryeR"))
  wd.orig <- getwd()
  (wd <- path.expand("~"))
  wd
  setwd(wd)
  setwd("./R/Packages/fryeR")
  document()
  setwd("..")
  install("fryeR")
  library("fryeR")
  setwd(wd.orig)
}
