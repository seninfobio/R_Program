# G and K22


# Data

GK22 <- as.table(c(43.75, 98))

dimnames(GK22) <- list(gender = c("K22", "G"))

Xsq <- chisq.test(GK22)

Xsq        


# all


# Data

F2 <- as.table(c(70, 250))

dimnames(F2) <- list(PlantGrowth = c("SHORTER", "TALLER"))

XsqF2 <- chisq.test(F2)

XsqF2                   

XsqF2$observed   # observed counts (same as M)
XsqF2$expected   # expected counts under the null
XsqF2$residuals  # Pearson residuals
XsqF2$stdres     # standardized residuals



library(ggplot2)



data_PH_F12 = read.csv("histogram_grp_f1_f2.csv", h = T)



## Histogramm by GROUP

ggplot(data_PH_F12, aes(x = PH,fill = group, colour = group)) + 
  geom_histogram(alpha = 0.15, position = "identity") +
  labs(y = "Number of line", x = "Plant Height (cm)") +
  theme_bw()

