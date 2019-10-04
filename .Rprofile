library(methods)
options(repos = c(CRAN = "https://mirrors.tuna.tsinghua.edu.cn/CRAN"))
options(radian.prompt = "\033[0;34m>\033[0m ", 
  radian.tab_size = 2, radian.complete_while_typing = FALSE)
options(datatable.quiet = TRUE)

if (!identical(Sys.getenv("RSTUDIO"), "1")) {
  options(device_args = list())
  options(device_call = function(filename, ...) {
    device_args <- c(filename = filename, getOption("device_args", list()))
    do.call("png", device_args)
  })
  options(device = function(...) {
    dir <- ".images"
    dir.create(dir, showWarnings = FALSE)
    latest_files <- list.files(dir, "^latest-\\d+\\.png$", full.names = TRUE)
    if (length(latest_files)) {
      ids <- gsub("^latest-(\\d+)\\.png$", "\\1", basename(latest_files))
      mtimes <- format(file.mtime(latest_files), "%Y%m%d-%H%M%OS3")
      backup_files <- file.path(dir, sprintf("%s-%s.png", mtimes, ids))
      file.rename(latest_files, backup_files)
    }
    latest_file <- file.path(dir, "latest-%d.png")
    device_call <- getOption("device_call")
    device_call(filename = latest_file, ...)
  })
}
