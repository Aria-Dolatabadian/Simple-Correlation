#This line reads the data from the "millet.csv" file and assigns it to the variable
read.csv("millet.csv")->millet.dat
#This line performs a correlation test between the variables millet.dat$injury.10dat and millet.dat$drywt. It calculates the correlation coefficient and performs a hypothesis test to determine if the correlation is statistically significant.
cor.test(millet.dat$injury.10dat,millet.dat$drywt)
#Similar to the previous line, this line performs a correlation test between the variables millet.dat$injury.20dat and millet.dat$drywt.
cor.test(millet.dat$injury.20dat,millet.dat$drywt)
#This line creates a vector var1 with values from 1 to 5.
var1<-1:5
#This line creates a vector var2 with values from 2 to 6.
var2<-2:6
#This line performs a correlation test between var1 and var2 using the Kendall correlation coefficient. The Kendall correlation measures the strength of the relationship between two variables when the data is ranked.
cor.test(var1, var2, method="kendall") 
#Similar to the previous line, this line performs a correlation test between var1 and var2 using the Spearman correlation coefficient. The Spearman correlation is a nonparametric measure of the monotonic relationship between two variables.
cor.test(var1, var2, method="spearman")
#This line sets graphical parameters for the plot. cex=2 increases the font size, and mgp=c(2,.7,0) adjusts the margin line heights for the plot.
par(cex=2, mgp=c(2,.7,0))
#This line creates a scatterplot matrix for columns 4 to 6 of millet.dat. The pch=19 argument sets the plotting character to a solid circle, and col=rgb(red=0.1, green=0.1, blue=0.1, alpha=0.2) sets the color of the points to a transparent gray.
pairs(millet.dat[4:6], pch=19, col=rgb(red=0.1, green=0.1, blue=0.1, alpha=0.2))

