# Load library


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

out_comp_lw = LSD.test(model_lw,"Type", p.adj="bonferroni")

out_comp_lr = LSD.test(model_lr,"Type", p.adj="bonferroni")






out_comp_ph

out_comp_ll


out_comp_lw


out_comp_lr








out = duncan.test(model,"Type")
out
     