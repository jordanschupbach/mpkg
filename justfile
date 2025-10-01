# Justfile for building and testing the R package

build:
    Rscript -e "devtools::build()"

build-docs:
    Rscript -e "roxygen2::roxygenise()"

test:
    Rscript -e "devtools::test()"
