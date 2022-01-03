install.packages("GGally")
library(GGally)

data_f2 = read.csv("F2_Plants_groupingnodes.csv", h = T, sep = ",")

View(data_f2)

ggpairs(data_f2, columns = 2:5)

ggpairs(data_f2, columns = 2:5, ggplot2::aes(colour=Type))





data_f2 = read.csv("F2_Plants_LengthofPN", h = T, sep = ",")

View(data_f2)

ggpairs(data_f2, columns = 2:5)

ggpairs(data_f2, columns = 2:5, ggplot2::aes(colour=Type))


