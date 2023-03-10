Data = read.csv("~/Downloads/StudentsPerformance.csv")
View(Data)
dim(Data)
new_data = as.data.frame(Data)
View(new_data)
summary(new_data)
library(ggplot2)
data100 = new_data[1:100,]
View(data100)
Plot1 = ggplot(data100, aes(math.score)) + geom_histogram(color = "gray", aes(fill = gender))
Plot1 = Plot1 + xlab("Math Score") + ylab("gender") + ggtitle("Math Score by Gender")
Plot1