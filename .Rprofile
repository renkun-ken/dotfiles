library(methods)
options(repos = c(CRAN = "https://mirrors.tongji.edu.cn/CRAN"))
options(help_type = "html")
options(useFancyQuotes = FALSE)
options(lintr.linter_file = ".lintr")
options(radian.prompt = "\033[0;34m>\033[0m ",
  radian.tab_size = 2, 
  radian.complete_while_typing = FALSE,
  radian.suppress_reticulate_message = TRUE)
options(languageserver.formatting_style = function(options) {
  styler::tidyverse_style(scope = "indention", indent_by = options$tabSize)
})
options(datatable.quiet = TRUE)
source(file.path(Sys.getenv(if (.Platform$OS.type == "windows") "HOMEPATH" else "HOME"), ".vscode-R", "init.R"))

