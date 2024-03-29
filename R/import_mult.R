#' Move a set of columns to the left-hand side of a data frame
#' 
#' @param ft A fileTable of files to import and stack
#' @param which which worksheet tab to import (integer)
#' @export
import_mult <- function(ft, which = 1) {
  for (i in 1:nrow(ft)){
    ft$file_path[i]
    df_sel <- import(ft$file_path[i], which = which)
    
    if(i == 1){
      df_comb <- df_sel
    } else if (i != 1){
      df_comb <- df_comb %>% 
        rbind(df_sel)
    }
    print(paste0(i, " of ", nrow(ft)))
  }
  df_comb
}