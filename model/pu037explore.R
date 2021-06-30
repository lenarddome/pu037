print("DAU: PU037: SUSTAIN modelling")
print("CC BY-SA 4.0")
print("Author: Lenard Dome, Charlotte E. R. Edmunds")
print("Requires: catlearn >=0.7.4")

# import packages
library(tidyverse)
library(cowplot)
library(ggplot2)
library(data.table)
library(knitr)

# load simulation data
load("pu037sims.RData")
load("pu037.RData")
load("pu037parameters.RData")

# load actual data
data <- read.csv("../data/dau/PLY40summaryData.csv")
data <- data[data$Correct_Test > 0.5, ]

pu037 <- aggregate(formula = cbind(d_a, dprime, Correct_Test) ~ Condition,
                   data = data, FUN = mean)
pu037 <- type.convert(cbind(pu037, Error = 1 - pu037$Correct_Test))

## prep data
simData <- as.data.table(simData)
colnames(simData)[1] <- "ppt"
simData[, correct := 1 - abs(c1 - V1)]

# best fitting parameter table
tab <- c(paramEvolve$optim$bestmem)
tab <- cbind(tab, c("10", "10", "20", "0.2"))
rownames(tab) <- c("attentional focus (r)", "lateral inhibition (beta)",
                   "decision consistency (d)", "learning rate (eta)")

kable(tab, col.names = c("Best Fitting Parameters", "Upper Parameter Bounds"),
      caption = "Best fitting parameters for SUSTAIN",
      align = c("c", "c"))

## clusters
maxCluster <- simData[, max:=max(winning), by=.(cond, ppt)]
maxCluster[, list(max=max(max), min=min(max)), by=cond]
maxGroup <- maxCluster[, list(max = max(max), min = min(max)), by = cond]

clusterPerPpt <- maxCluster[, list(mean=mean(max)), by=.(cond, ppt)]
summaryCluster <- clusterPerPpt[, list(mean=mean(mean), sd=sd(mean)), by=cond]

kable(cbind(summaryCluster, maxGroup[2:3, 2:3]),
      col.names = c("Condition", "Mean", "SD", "Max", "Min"),
      caption = "The number of clusters recruited by SUSTAIN")

## more cluster than training item (talk about it later)
clusters <- subset(simData, !(ppt %in% exclusion))

## test performance
test <- simData[ctrl == 2]
test$cond <- recode(test$cond, "II+" = "II",
                               "II-" = "II",
                               "UD+" = "UD",
                               "UD-" = "UD")
testPpt <- aggregate(correct ~ ppt + cond, data = test, mean)
ctab <- cbind(aggregate(correct ~ cond, data = testPpt,
                        mean),
              pu037$Correct_Test)

kable(ctab, col.names = c("Category Structures", "SUSTAIN", "human"),
      caption = "Categorization Accuracy")

ggplot(testPpt, aes(y = correct)) +
    geom_violin(aes(x = cond, fill = cond)) +
    geom_boxplot(aes(x = cond), width = .1) +
    cowplot::theme_cowplot()

## recognition

recognitionPpt <- aggregate(recognition.score ~ ppt + cond, data = test, mean)
as.data.table(recognitionPpt)[, list(mean = mean(recognition.score),
                                     sd = sd(recognition.score)), by = cond]

ggplot(recognitionPpt, aes(y = recognition.score, x = cond)) +
    geom_violin(aes(fill = cond), scale = 1) +
    geom_boxplot(width = .1) +
    theme_cowplot()

## Equation A11
test$endorsement <- 0
test$endorsement <- test$recognition.score / (test$recognition.score + .15)
endorse <- aggregate(endorsement ~ ppt + cond, data = test, mean)
as.data.table(endorse)[, list(mean = mean(endorsement),
                                     sd = sd(endorsement)), by = cond]
ggplot(endorse, aes(x = endorsement, linetype = cond)) + geom_density()


# manuscript graphs
clusterGraph <- simData[ppt %in% c(3, 59, 305, 482)]
UDplus <-
    ggplot(clusterGraph[cond %in% c("UD+") & ppt %in% c(3, 59, 482)],
           aes(x = clusterPosX, y = clusterPosY,
                         group = winning)) +
                  facet_grid(cond ~ ppt) +
                  geom_vline(xintercept = 0.50) +
                  geom_point(size = 2) +
                  labs(x = NULL, y = "Size") +
                  theme_cowplot() +
                  panel_border(remove = FALSE, color = "black") +
                  scale_color_viridis_d() +
                  theme(legend.position="none",
                        plot.margin = margin(0.25, 0, 0, 0, "cm"),
                        axis.title.x=element_blank(),
                        axis.text.x=element_blank(),
                        axis.ticks.x=element_blank(),
                        strip.text.y = element_text(color="white"),
                        strip.text.x = element_blank(),
                        strip.background = element_rect(colour="black",
                                                        fill="black"))

UDminus <-
    ggplot(clusterGraph[cond %in% c("UD-") & ppt %in% c(3, 59, 482)],
           aes(x = clusterPosX, y = clusterPosY,
                         group = winning)) +
                  facet_grid(cond ~ ppt) +
                  geom_hline(yintercept = 0.50) +
                  geom_point(size = 2) +
                  labs(x = NULL, y = "Size") +
                  theme_cowplot() +
                  panel_border(remove = FALSE, color = "black") +
                  scale_color_viridis_d() +
                  theme(legend.position="none",
                        plot.margin = margin(0, 0, 0, 0, "cm"),
                        axis.title.x=element_blank(),
                        axis.text.x=element_blank(),
                        axis.ticks.x=element_blank(),
                        strip.text.y = element_text(color="white"),
                        strip.text.x = element_blank(),
                        strip.background = element_rect(colour="black",
                                                        fill="black"))


IIplus <-
    ggplot(clusterGraph[cond %in% c("II+") & ppt %in% c(3, 59, 305)],
           aes(x = clusterPosX, y = clusterPosY,
                         group = winning)) +
                  facet_grid(cond ~ ppt) +
                  geom_abline(slope = 1, intercept = 0) +
                  geom_point(size = 2) +
                  labs(x = NULL, y = "Size") +
                  theme_cowplot() +
                  panel_border(remove = FALSE, color = "black") +
                  scale_color_viridis_d() +
                  theme(legend.position="none",
                        axis.title.x=element_blank(),
                        plot.margin = margin(0, 0, 0, 0, "cm"),
                        axis.text.x = element_blank(),
                        axis.ticks.x = element_blank(),
                        strip.text.y = element_text(color = "white"),
                        strip.text.x = element_blank(),
                        strip.background = element_rect(colour = "black",
                                                        fill = "black"))

IIminus <-
    ggplot(clusterGraph[cond %in% c("II-") & ppt %in% c(3, 59, 305)],
           aes(x = clusterPosX, y = clusterPosY,
                         group = winning)) +
                  facet_grid(cond ~ ppt) +
                  geom_abline(slope = -1, intercept = 1) +
                  geom_point(size = 2) +
                  labs(x = "Brightness", y = "Size") +
                  theme_cowplot() +
                  panel_border(remove = FALSE, color = "black") +
                  scale_color_viridis_d() +
                  theme(legend.position = "none",
                        plot.margin = margin(0, 0, 0, 0, "cm"),
                        strip.text.y = element_text(color = "white"),
                        strip.text.x = element_blank(),
                        strip.background = element_rect(colour = "black",
                                                        fill = "black"))


cALL <- plot_grid(UDplus, UDminus, IIplus, IIminus, nrow = 4, scale = 1,
       label_size = 14,
       align = "hv")
cALL

ggsave(filename = "clusters.pdf", plot = cALL, units = "cm", width = 15,
       height = 20)


# lambda table

maxCluster <- simData[, list(x = mean(lambdaX), y = mean(lambdaY),
                             cluster = max(max)), by = c("ppt", "cond")]
kable(transpose(maxCluster[, list(x=mean(x), y=mean(y)), by=cond],
                keep.names = "col", make.names = "cond"),
      format = "latex")
