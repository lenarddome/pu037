print("DAU: PU037: SUSTAIN modelling")
print("CC BY-SA 4.0")
print("Author: Lenard Dome")
print("Requires: catlearn >=0.7.4")

library(DEoptim)

# minimization function for parameter search
minimize <- function(param) {
    library(data.table)
    library(dplyr)
    load("pu037test.RData") # load SUSTAIN test data
    human <- c(0.01, 0.00)  # load human means from paper

    # convert recognition score to probabilities
    test$endorsement <- 0
    test$endorsement <- test$recognition.score / (test$recognition.score + param)
    test <- test[, recognition := ifelse(old == "old", 0, 1)]
    test[, pold := abs(recognition - endorsement)]
    test[, pnew := 1 - pold]
    # calculate d'prime
    HitRate <- test[old == "old", c("ppt", "cond", "pold")]
    HitRate <- HitRate[, list(hit = mean(pold)), by = c("ppt", "cond")]
    FalseAlaram <- test[old == "new", c("ppt", "cond", "pold")]
    FalseAlaram <- FalseAlaram[, list(hit = mean(pold)), by = c("ppt", "cond")]
    dprimePerPpt <- cbind(HitRate, false = FalseAlaram[, 3])
    dprimePerPpt[, c("zhit", "zfalse")] <- data.frame(
                                            t(apply(dprimePerPpt[, 3:4], 1,
                                                    function (x) qnorm( x))))
    dprimePerPpt[, dprime := zhit - zfalse] # use d'prime formula
    dprimePerPpt$cond <- recode(dprimePerPpt$cond,
                                "II+" = "II",
                                "II-" = "II",
                                "UD+" = "UD",
                                "UD-" = "UD")
    model <- aggregate(dprime ~ cond, dprimePerPpt, mean)
    # calculate and return SSE
    error <- sum((model[, 2] - human)^2)
    return(error)
}

optim <- DEoptim(minimize, lower = 0, upper = 1,
                 control = c(itermax = 100, parallelType = 1))

save(optim, file = "pu037threshold.RData")
