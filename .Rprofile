options(repos = c(CRAN = "https://mirrors.sjtug.sjtu.edu.cn/cran/"))
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

options(languageserver.lint_cache = TRUE)
options(languageserver.formatting_style = function(options) {
  styler::tidyverse_style(scope = "indention", indent_by = options$tabSize)
})

options(datatable.quiet = TRUE,
  datatable.print.class = TRUE,
  datatable.print.keys = TRUE)
options(future.rng.onMisuse = "ignore")

if (interactive() && Sys.getenv("RSTUDIO") == "") {
  Sys.setenv(TERM_PROGRAM = "vscode")
  source(file.path(Sys.getenv(if (.Platform$OS.type == "windows") "USERPROFILE" else "HOME"), ".vscode-R", "init.R"))
}
