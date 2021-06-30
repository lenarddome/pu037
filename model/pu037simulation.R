print("DAU: PU037: SUSTAIN modelling")
print("CC BY-SA 4.0")
print("Author: Lenard Dome, Charlotte E. R. Edmunds")
print("Requires: catlearn >=0.7.4")

## load packages
rm(list = ls())
library(catlearn)
library(foreach)
library(doParallel)
source("pu037train.R")           ## Get training matrices

## import best fitting parameters
load("pu037parameters.RData")
par <- paramEvolve$optim$bestmem

## create initial conditions
st <- list(lambda = c(1, 1),           # tuning of receptive fields
           tau = 0.0,                  # unsupervised threshold
           dims = c(1, 1),
           w = NA,
           cluster = NA,
           colskip = 4,
           r = par[1],                 # attentional focus
           beta = par[2],              # lateral inhibition
           d = par[3],                 # decisiton consistency
           eta = par[4])               # learning rate

## create character vector for the training matrices
conditions <- c("positive", "negative", "vertical", "horizontal")

## create function to get slpSUSTAIN's output into the right format
simSUSTAIN <- function(st, data) {
    sim <- NULL
    out <- NULL
    sim <- slpSUSTAIN(st, data.matrix(data), xtdo = TRUE)
    lambdas <- matrix(sim$lambda, nrow = 1)
    colnames(lambdas) <- c("lambdaX", "lambdaY")
    out <- data.frame(cbind(data, sim$xtdo, lambdas))
    clusters <- cbind(seq_len(nrow(sim$cluster)), sim$cluster)
    colnames(clusters) <- c("winning", "clusterPosX", "clusterPosY",
                            "cluster1", "cluster2")
    out <- plyr::join(out, data.frame(clusters), by = "winning")
    return(out)
}

## miscellaneous preparations for parallel computing
simData <- NULL
numCores <- detectCores()
registerDoParallel(numCores)

## run actual simulation for 1000
print("DAU: PU037: SUSTAIN simulation")
print("CC BY-SA 4.0")
print("Author: Lenard Dome, Charlotte E. R. Edmunds ")

writeLines("The simulation will take a bit of time, because it
will go through all four conditions 1000 times. So just grab a
hot beverage, sit back, and wait for the magic to happen...")

ascii <- c("
   ( (
    ) )
  ........
  |      |]
  \\\      /    Jen Carlson
   `----'
")

writeLines(ascii)

simData <- foreach(i = 1:1000, .combine = rbind) %dopar% {
    set.seed(i)
    out <- NULL
    lambdas <- NULL
    for (k in seq_len(4)) {
        sim <- simSUSTAIN(st, pu037train(bound = conditions[k], seed = i))
        out <- rbind(out, data.frame(i, sim))
    }
    out
}

stopImplicitCluster()

save(simData, file = "pu037sims.RData")

print("The simulation has completed and the data has been saved.")
