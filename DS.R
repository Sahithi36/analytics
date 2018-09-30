#Data structuresin R

#vectors----
x=1:10 # create sequence of numbers from 1 to 10
x
x <- 1:20
(x1=1:10) # to obth assign and print it
(x2=c(1,2,3,4,5))
class(x2)
(x3=letters[1:10])
LETTERS[1:26]
(x3b=c(2,"sahithi",1))
class(x3b)
(x4=c(1,FALSE,TRUE,T,F))
class(x4)
x5=c(3L,5L)
class(x5)

#access elements
(x6 =seq(0,100,by=3))
x6[20] # acces the 20th element
x6[40]
?seq
methods(class='numeric')
ls() #variablesin my environment
length(x6) #gives the no of elements
x6[c(2,4)]
x6[-1]
x6[-c(1:10)]
x6[-c(1,5,20)]
x6[-(length(x6)-1)]
(x7=c(x2,x6))

#modify
sort(x7,decreasing=T)
sort(x6[-c(1,2)])

seq(-3,10,by=.2)
(x=-3:2)
(x7 -> x6)
x6
x < 0
x[x<0] = 5;x # modify elements less than 0

x=x[1:4];x#truncate x to first 4 elements

#delete vector
(x=seq(1,5,length.out =10)) # to divide 1 to 5 into 10 parts

x=NULL;x

(x=rnorm(100))
(x1=rnorm(10000,mean=50,sd=5))
plot(density(x1))
abline(v=mean(x1),h=0.04)# draw a line at mean and also horizantaly at h=0.04


# Matrices----
100:111
(m1=matrix(1:12,nrow=4))
(m2=matrix(1:12,ncol=3,byrow=T))
x=101:124
length(x)
matrix(x,ncol=3)
class(m1)
attributes(m1)
dim(m1)

m1[3,2:3]# displays 3rd row from 2 to 3 postions
m1[c(1,3) ,]

paste("C","D",sep="-")
paste("C",1:100,sep="-")

(colnames(m1)=paste('c',1:3,sep=''))
(rownames(m1)=paste('r',1:4,sep=''))

m2[1:5]
m2[c(TRUE,F,T,F),c(2,3)]
m2[m2 > 5 & m2 < 10]

m1;m2
m1[1:2,1:3]
m2[2,2]
m2[2,2]=10
m2[m2>10]=99
m2
rbind(m2,c(55,65,75))
cbind(m2,c(50,60,70,80))
cbind(m2,m2)

m1
colSums(m1);rowSums(m1)
colMeans(m1);rowMeans(m1)
t(m1)# trnaspose
m1
sweep(m1,MARGIN =1,STATS = c(2,3,4,5),FUN="+") #rowise
sweep(m1,MARGIN=2,STATS=c(2,3,4),FUN="*") #colwise
m1
addmargins(m1,margin=1,sum)
addmargins(m1,c(1,2),mean)
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))
?list
#Arrays----

#Data Frame----

(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30,mean= 50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
rollno; sname; gender
marks ; marks2; course
set.seed(1234)
?head
#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
df1
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) # DF
summary(df1) #summary
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)

df1  #full data
df1$gender  # one column
df1[ , c(2,4)] #multiple columns
df1[1:10 ,] #select rows, all columns
#as per conditionis
df1[ marks > 50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
df1[ marks > 50 & gender=='F', c(1,2)]
df1[ marks > 50 | gender=='F', ]

names(df1)  # names of columns
dim(df1)  #Dimensions


g ="My First List"
h = c(25, 26,18,39)
j = matrix(1:10,nrow=2)
k = c('one','two','three')
mylist = list(title=g, ages=h, j, h)
mylist
mylist[2]
mylist[[2]]
mylist[['ages']]
mylist$ages





#Factor -----

(grades = sample(c('A','B','C','D'), size=30, replace=T, prob=c(.3,.2,.4,.1)))
summary(grades)
table(grades)
(gradesFactor = factor(grades))
summary(gradesFactor)

(gradesFactorOrdered = factor(grades, ordered=T))
summary(gradesFactorOrdered)

(gradesFactorOrderedLevels = factor(grades, ordered=T, levels=c('D','C','B','A')))
summary(gradesFactorOrderedLevels)

pie(summary(gradesFactorOrderedLevels))
barplot(summary(gradesFactorOrderedLevels))

class(grades)
class(gradesFactorOrdered)
class(gradesFactorOrderedLevels)



# Object Properties
#vector
v1= 1:100
class(v1) ; typeof(v1)
v2=letters[1:10]
class(v2) ; typeof(v2)
length(v2)
summary(v1)

#matrix
m1= matrix(1:24,nrow=6)
class(m1)
summary(m1)
dim(m1)
str(m1)

#Array
a1 =array(1:24, dim=c(4,3,2))
class(a1)
str(a1)
dim(a1)
summary(a1)



#DF
#data() #built in datasets
df1= iris 
str(df1)
summary(df1)
class(df1); dim(df1)
nrow(df1) ; names(df1) ;NROW(df1)
colnames(df1)
rownames(df1)

#list
list1 = list(v1,m1,a1,df1)
str(list1)

#Statistical Description
library(Hmisc)
describe(df1)


#Factors----