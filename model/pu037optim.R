print("DAU: PU037: SUSTAIN modelling")
print("CC BY-SA 4.0")
print("Author: Lenard Dome, Charlotte E. R. Edmunds")
print("Requires: catlearn >=0.7.4")

## Set-up ---------------------------------------------------------------------
rm(list = ls()) ## Clear all variables in the workspace
require("data.table")
require("catlearn")
require("DEoptim")
source("pu037train.R") ## Get training matrices

## create a big training set for SUSTAIN including all conditions
pu037set <- NULL
getData <- function() {
    conditions <- c("positive", "negative", "vertical", "horizontal")
    output <- NULL
    for (i in conditions) {
        output <- rbind(output, pu037train(bound = i, seed = sample(1000, 1)))
    }
    return(output)
}
pu037set <- getData()

## Fitting SUSTAIN ------------------------------------------------------------
#' minimization function
#' takes a set of parameters and data, then outputs the Sum of Squared Errors
#' @param par vector of parameters
#' @param data a matrix or data frame containing the training and test matrix
#' @return Sum of Squared Errors
fitSUSTAIN <- function(par, data) {
    require(catlearn)
    load("pu037.RData")
    pu037 <- aggregate(Correct_Test ~ Condition, pu037, mean)
    st.all <- list(lambda = c(1, 1), # tuning of receptive fields
                   tau = 0.0, # unsupervised threshold
                   dims = c(1, 1),
                   w = NA,
                   cluster = NA,
                   colskip = 3,
                   r = par[1],
                   beta = par[2],
                   d = par[3],
                   eta = par[4])
    out.list <- list()
    out.list <- slpSUSTAIN(st = st.all, tr = data.matrix(data), xtdo = F)
    tindex <- which(data["ctrl"] == 2) # test phase row index
    error <- cbind(cond = data[tindex, "cond"],
                   error = data[tindex, 7] - out.list$probs[tindex, 1])
    correct <- aggregate(formula = (1 - abs(error)) ~ cond,
                         data = error, FUN = mean)
    out <- ssecl(pu037$Correct_Test,
                 c(mean(correct[1:2, 2]), mean(correct[3:4, 2])))
    if (is.na(out)) {
        out = Inf
    }
    return(out)
}

# run the actual simulation

print("DEoptim will output the best fitting parameters for each iteration")
print("The optimization will now be re-calculated.")
print("Calculating...")

paramEvolve <- DEoptim(fitSUSTAIN, data = getData(),
                       lower = c(0, 0, 0, 0),
                       upper = c(10, 10, 20, 0.2),
                       control = list(parallelType = 1, itermax = 1000,
                                      c = 0.5, strategy = 6, p = 0.30))

# save DEoptim output into RData
save(paramEvolve, file = "pu037parameters.RData")
