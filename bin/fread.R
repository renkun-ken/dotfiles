library(data.table, quietly = TRUE)
options(width = as.integer(system2("tput", args = "cols", stdout = TRUE)))
args <- commandArgs(trailingOnly = TRUE)
dt <- data.table::fread(args[[1]])

for (arg in args[-1]) {
  expr <- parse(text = sprintf("dt <- dt[%s]", arg))
  eval(expr)
}

print(dt)
