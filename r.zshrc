#! /bin/bash
alias r="radian"
alias r_compile="Rscript -e 'invisible(Rcpp::compileAttributes())"
alias r_document="Rscript -e 'devtools::document()'"
alias r_test="Rscript -e 'devtools::test()'"
alias r_check="Rscript -e 'devtools::check()'"
alias r_build="Rscript -e 'invisible(Rcpp::compileAttributes())' && Rscript -e 'devtools::document()' && Rscript -e 'devtools::build(binary=FALSE)'"
alias r_install="Rscript -e 'invisible(Rcpp::compileAttributes())' && Rscript -e 'devtools::document()' && Rscript -e 'devtools::install()'"
alias r_update_pkgs="Rscript -e 'update.packages(lib=.libPaths()[[1L]],ask=FALSE)'"

