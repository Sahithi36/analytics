install.packages("dplyr")
library(dplyr)
filter(mtcars,mpg>25 & am==1)
mtcars
count(mtcars)
mtcars %>%>filter(mpg >25 & am=1) %>%> arrange(wt) %>%> summarise(n())

library(amap)
