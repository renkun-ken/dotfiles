options(width = as.integer(system2("tput", args = "cols", stdout = TRUE)))
args <- commandArgs(trailingOnly = TRUE)
dt <- data.table::fread(args[[1]])

for (arg in args[-1]) {
  expr <- parse(text = sprintf("dt%s", arg))[[1]]
  print(expr)
  dt <- eval(expr)
}

print(dt)
