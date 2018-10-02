gender=sample(c('M','F'),100,T)
data1
data2=data.frame(gender,spl=sample(c('HR','Marketing','Finance'),100,T),age=sample(c(21:30),100,T),exp=floor(rnorm(100,mean=3,sd=1)),placement=sample(c('yes','no'),100,T),stringsAsFactors = T)
data2
str(data2)
summary(data2)
data2
data2$gender=factor(data2$gender)
str(data$gender)
plot(data2)
library(dplyr)
install.packages('olsrr')
library(olsrr)
model <- glm(placement ~ gender+spl,family=binomial,data = data2)
model1=lm(age ~ . ,data=data2)
summary(model)
summary(model1)
table(data2$placement,data2$gender)
data2 %>% group_by(gender,spl)%>%arrange(exp)%>%summarise(max(exp))
data2 %>% filter(spl=='Marketing'| spl=='Finance')%>% group_by(spl)%>%summarise(mean(age))
par(mfrow=c(2,2))
hist(data2$age)
pie(table(data2$gender))
pie(table(data2$placement))
pie(table(data2$age))
par(mfrow=c(1,1))
write.csv(data2, './data/ximb.csv')
data2=read.csv('./data/ximb.csv')

#clustering
km3=kmeans(data2[,c('age','exp')],centers=3)
km3
km3$centers
plot(data2[,c('placement','exp')],col=km3$cluster)

#decision tree
library(rpart)
library(rpart.plot)

tree=rpart(placement ~ .,data=data2)
tree
rpart.plot(tree,nn=T,cex=.8)

printcp(tree)
ndata=sample_n(data2,3)
ndata
predict(tree,newdata=ndata,type='class')
predict(tree,newdata=ndata,type='prob')
