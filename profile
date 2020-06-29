#! /bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
export PATH=$DIR/bin:$PATH

alias r="radian"
alias r_compile="Rscript -e 'invisible(Rcpp::compileAttributes())"
alias r_document="Rscript -e 'devtools::document()'"
alias r_test="Rscript -e 'devtools::test()'"
alias r_check="Rscript -e 'devtools::check()'"
alias r_build="Rscript -e 'devtools::build(binary=FALSE)'"
alias r_build_binary="Rscript -e 'devtools::build(binary=TRUE)'"
alias r_install_deps="Rscript -e 'devtools::install_deps()'"
alias r_install="Rscript -e 'devtools::install(upgrade=\"never\")'"
alias r_update_pkgs="Rscript -e 'update.packages(lib=.libPaths()[[1L]],ask=FALSE)'"
alias r_full_install="Rscript -e 'Rcpp::compileAttributes();devtools::document();devtools::install(upgrade=\"never\")'"
