library(methods)
options(repos=c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN"))

if (!identical(Sys.getenv("RSTUDIO"), "1")) {
  options(device = function(...) {
    dir <- ".images"
    dir.create(dir, showWarnings = FALSE)
    cur_file <- file.path(dir, "latest.png")
    if (file.exists(cur_file)) {
      bak_file <- file.path(dir, format(Sys.time(), "%Y%m%d-%H%M%S.png"))
      file.copy(cur_file, bak_file)
    }
    png(filename = cur_file, ...)
  })
}

