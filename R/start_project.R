#' Create default project files and directories
#'
#' @export
start_project = function(cd = getwd()) {
  
  cat('\n')
  cat('Creating default directory layout')
  cat('\n')
  cat('\n')
  
  append_path = function(...){
    return(paste(..., sep = '/'))
  }
  
  cat('Creating folders')
  cat('\n')
  
  folders = c(
    'analysis',
    'analysis/archive',
    'data',
    'data/archive',
    'data/raw',
    # 'data/processed',
    'docs',
    'docs/archive',
    'graphics',
    'graphics/archive',
    'queries',
    'queries/archive',
    'R',
    'R/archive'
  )
  
  folders_full = append_path(cd, folders)
  
  for (i in seq_along(folders_full)) {
    folder = folders[i]
    folder_full = folders_full[i]
    if (!dir.exists(folder_full)){
      dir.create(path = folder_full)
    } else {
      cat('Folder', folder, 'already exists')
      cat('\n')
    }
  }
  
  cat('\n')
  cat('Creating files')
  cat('\n')
  
  file.copy(from = file.path('~', 'Default Project Files', '010 Load.R'),
            to = file.path(cd, 'R'))
  
  file.copy(from = file.path('~', 'Default Project Files', '.gitignore'),
            to = cd)
  
  return(invisible(NULL))
}