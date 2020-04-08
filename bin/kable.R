suppressPackageStartupMessages({
  requireNamespace("knitr")
  requireNamespace("data.table")
})
options(width = as.integer(system2("tput", args = "cols", stdout = TRUE)))
args <- commandArgs(trailingOnly = TRUE)
data <- data.table::fread(args[[1]])
knitr::kable(data, format = "pandoc")
