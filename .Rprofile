options(repos = c(CRAN = "https://mirrors.tongji.edu.cn/CRAN/"))
options(useFancyQuotes = FALSE)
options(error = function() {
  calls <- sys.calls()
  if (length(calls) >= 2L) {
    sink(stderr())
    on.exit(sink(NULL))
    cat("Backtrace:\n")
    calls <- rev(calls[-length(calls)])
    for (i in seq_along(calls)) {
      cat(i, ": ", deparse(calls[[i]], nlines = 1L), "\n", sep = "")
    }
  }
  if (!interactive()) {
    message("Exiting on error")
    q(status = 1)
  }
})
options(languageserver.formatting_style = function(options) {
  styler::tidyverse_style(scope = "indention", indent_by = options$tabSize)
})

options(datatable.quiet = TRUE,
  datatable.print.class = TRUE,
  datatable.print.keys = TRUE)
Sys.setenv(TERM_PROGRAM = "vscode")
options(dev.args = list(width = 960, height = 600))
source(file.path(Sys.getenv(if (.Platform$OS.type == "windows") "USERPROFILE" else "HOME"), ".vscode-R", "init.R"))
