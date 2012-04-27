library(ggplot2)
mydata<-read.csv("/Users/sciruela/Documents/govermentsLifeexpectancy/data.csv")

colnames(mydata)[4]<-"Life.expectancy"
colnames(mydata)[6]<-"Category"


pdf("/Users/sciruela/Documents/govermentsLifeexpectancy/graph1.pdf")
ggplot(mydata, aes(x=Category, y=Life.expectancy, group=Category, fill=Category, label=Location)) +
geom_boxplot() +

ylab("Life Expectancy") +
xlab("Government Type") +

opts(title="Life Expectancy by Government Type (2009)",
legend.title = theme_blank(),
panel.background = theme_blank(),
axis.text.x=theme_text(angle=0, hjust=0.5))
dev.off()

pdf("/Users/sciruela/Documents/govermentsLifeexpectancy/graph2.pdf")
ggplot(mydata, aes(y=Index, x=Life.expectancy, label=Location, color=Category)) +
geom_point(size=0.5, colour='dark grey') +
geom_text(size=3.5, angle=0, hjust=.5) +

xlab("Life Expectancy") +
ylab("Democracy Index") +

opts(title="Life Expectancy by Government Type (2009)",
legend.title = theme_blank(),
panel.background = theme_blank())
dev.off()