
(grades = sample(c('A','B','C','D'), size=30, replace=T, prob=c(.4,.3,.2,.1)))
grades=factor(grades)
grades
plot(grades)
r.norm(grades,mean=0,sd=1)
summary(grades)
table(grades)
gradesF0=factor(grades,ordered=T)
gradesF0=factor(grades,ordered=T,level=c('B','C','A','D'))

(marks=ceiling(rnorm(30,mean=60,sd=5)))
(student1=data.frame(marks,gradesF0))
boxplot(marks ~ gradesF0,data=student1)
(summary(marks))
boxplot(marks)
abline(h=summary(marks))
quantile(marks)
(gender=factor(sample(c('M','F'),size=30,replace=T)))
boxplot(marks ~ grades+gender,data=student1)

