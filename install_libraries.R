list_of_packages <- c("knitr", 
                      "pracma",
                      "matrixcalc",
                      "shiny",
                      "ggplot2",
                      "sfsmisc",
                      "MASS",
                      "rgl",
                      "quadprog",
                      "optimx",
                      "lattice",
                      "ROI",
					  "ROI.plugin.glpk",
                      "ROI.plugin.quadprog",
                      "ROI.plugin.symphony",
                      "lpSolve",
                      "quantreg",
                      "lattice"
)

new_packages <- list_of_packages[!(list_of_packages %in% installed.packages()[,"Package"])]
if (length(new_packages) > 0) install.packages(new_packages)