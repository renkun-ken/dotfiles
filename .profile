#! /bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
export PATH=$DIR/bin:$PATH

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

alias r="radian"
alias r_compile="Rscript -e 'invisible(Rcpp::compileAttributes())"
alias r_document="Rscript -e 'devtools::document()'"
alias r_test="Rscript -e 'devtools::test()'"
alias r_check="Rscript -e 'devtools::check()'"
alias r_build="Rscript -e 'invisible(Rcpp::compileAttributes())' && Rscript -e 'devtools::document()' && Rscript -e 'devtools::build(binary=FALSE)'"
alias r_install="Rscript -e 'invisible(Rcpp::compileAttributes())' && Rscript -e 'devtools::document()' && Rscript -e 'devtools::install(dependencies=FALSE)'"
alias r_update_pkgs="Rscript -e 'update.packages(lib=.libPaths()[[1L]],ask=FALSE)'"
