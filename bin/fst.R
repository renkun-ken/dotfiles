options(width = as.integer(system2("tput", args = "cols", stdout = TRUE)))

args <- commandArgs(trailingOnly = TRUE)

if (length(args) == 0L) {
  cat("Usage:\n")
  cat("\tfst -m path\n")
  cat("\tfst path\n")
  cat("\tfst path column1,column2,...\n")
  cat("\tfst path \"[i, j, by = group]\"\n")
  cat("\tfst path column1,column2,... \"[i, j, by = group]\"\n")
  stop("No arguments specified", call. = FALSE)
}

if (args[[1]] == "-m") {
  print(fst::metadata_fst(args[[2]]))
  q(save = "no")
}

path <- args[[1L]]
columns <- NULL
selectors <- NULL
if (length(args) == 2L) {
  if (grepl("^\\[.*\\]$", args[[2L]])) {
    selectors <- args[[2L]]
  } else {
    columns <- args[[2L]]
  }
} else if (length(args) >= 3L) {
  columns <- args[[2L]]
  selectors <- args[-c(1L, 2L)]
}

if (is.character(columns)) {
  columns <- strsplit(args[[2L]], ",", fixed = TRUE)[[1L]]
}

dt <- fst::read_fst(path, columns = columns, as.data.table = TRUE)

for (selector in selectors) {
  expr <- parse(text = sprintf("dt%s", selector))[[1]]
  print(expr)
  dt <- eval(expr)
}

print(dt)
