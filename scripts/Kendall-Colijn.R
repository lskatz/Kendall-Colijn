#!/usr/bin/env Rscript

# Thanks to Boas van der Putten for help on this

# Read command line arguments
args = commandArgs(trailingOnly=TRUE)

library(ape)
library(treespace)

realtree_rooted <- read.tree(args[1])
testtree_rooted <- read.tree(args[2])

print(treeDist(realtree_rooted, testtree_rooted, lambda = args[3]))

