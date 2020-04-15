options(repos = c(CRAN = "https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))
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
    q(status = 1)
  }
})
options(radian.prompt = "\033[0;34m>\033[0m ",
  radian.tab_size = 2,
  radian.complete_while_typing = FALSE,
  radian.highlight_matching_bracket = TRUE,
  radian.suppress_reticulate_message = TRUE)
options(languageserver.formatting_style = function(options) {
  styler::tidyverse_style(scope = "indention", indent_by = options$tabSize)
})
options(datatable.quiet = TRUE,
  datatable.print.class = TRUE,
  datatable.print.keys = TRUE)
Sys.setenv(TERM_PROGRAM = "vscode")
options(dev.args = list(width = 960, height = 600))
source(file.path(Sys.getenv(if (.Platform$OS.type == "windows") "USERPROFILE" else "HOME"), ".vscode-R", "init.R"))
