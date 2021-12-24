# R_Program

Install R and RStudio on Windows 7, 8 or 10. A tutorial for a beginner is here.

Install the following packages before the course:

* [ggplot2](https://cran.r-project.org/web/packages/ggplot2/index.html)
* 



[Plot design](https://yulab-smu.top/biomedical-knowledge-mining-book/enrichplot.html)

* with  many examples of barplot, heatmap, etc. 
* Visualization of functional enrichment result




#GGally#
Correlation coefficient [help](https://www.rdocumentation.org/packages/GGally/versions/1.5.0/topics/ggpairs)

```r
# Data imporatation

data_f2 = read.csv("F2_Plants_groupingnodes.csv", h = T, sep = ",")

View(data_f2)

# Package

library(GGally)

# Run

ggpairs(data_f2, columns = 2:5)

ggpairs(data_f2, columns = 2:5, ggplot2::aes(colour=Type))

```
output

![img](https://github.com/seninfobio/R_Program/blob/seninfobio/ggally_8_78_10_23_landscape.png?raw=true)



```r
# Package
install.package(metan)
library(metan)

# Data imporatation

corrl <-corr_coef(F2_Plants_nodesdata1[,-1])

#Run

plot(corrl)
```

Output

![img](https://github.com/seninfobio/R_Program/blob/seninfobio/coeff1.png?raw=true)
















[Tutorial](https://biostats.w.uib.no/up-in-the-r-2/introduction-to-r/)




```r
# Load library Least Significant Test

library(agricolae)

# Import the data

ph_data = read.csv("Plant_HeightSignificancetest2.csv", h =T, sep = ',')
names(ph_data)

# ANOVA

model_ph = aov(Plant_height~Type, data = ph_data)
model_ll = aov(leaf_length~Type, data = ph_data)
model_lw = aov(Leaf_width~Type, data = ph_data)
model_lr = aov(Leaf_Ratio~Type, data = ph_data)

summary(model_ph)
summary(model_ll)
summary(model_lw)
summary(model_lr)


# Means comparision test

out_comp_ph = LSD.test(model_ph,"Type", p.adj="bonferroni")

out_comp_ll = LSD.test(model_ll,"Type", p.adj="bonferroni")

```

out_comp_lw = LSD.test(model_lw,"Type", p.adj="bonferroni")

out_comp_lr = LSD.test(model_lr,"Type", p.adj="bonferroni")


out_comp_ph

out_comp_ll

out_comp_lw

out_comp_lr




# Inkscape

- Make a curve : Use Bezier to draw and *Shit + A* to make a curve at a specific point

- Then fill with a color of your choice by selecting Fill bounded area (Copy the color code (Fill and Stroke) to main the border color as same)

- Then harmonize the area and stroke color

- Then move the filled shape to the place you want

- Then Click *End* key to put in in backfront

# Cropping [Ref:youtube](https://www.youtube.com/watch?v=v-JxhF3D4No)
- select the Rectangular symbol and select the area of your image
- click outside to select the whole image and press *shift key to selected the respected portion of your needed
- click object drag icon and select clip and set the image as you want.....Bingo

# https://github.com/ourcodingclub
[EFFICIENT AND BEAUTIFUL DATA SYNTHESIS](https://ourcodingclub.github.io/tutorials/dataviz-beautification-synthesis/)

