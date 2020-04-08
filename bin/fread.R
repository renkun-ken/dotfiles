suppressPackageStartupMessages({
  requireNamespace("data.table")
})
options(width = as.integer(system2("tput", args = "cols", stdout = TRUE)))
args <- commandArgs(trailingOnly = TRUE)
data.table::fread(args[[1]])
