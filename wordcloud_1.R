#https://www.r-graph-gallery.com/wordcloud/
# library
library(wordcloud2) 

# have a look to the example dataset
head(demoFreq)
wordcloud2(demoFreq,size=1,shape='star')
