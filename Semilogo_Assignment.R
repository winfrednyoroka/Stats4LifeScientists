#Excercise 1: Write an R command that will display the bwt variable using square brackets.
setwd("C:/Users/user/Documents/HackBio/Statistics/R work")
lbw <- read.csv("lbw.csv")

print(lbw[,11])



#Excercise 2: Use lbw$vlow command with names() and head() functions
setwd("C:/Users/user/Documents/HackBio/Statistics/R work")
lbw <- read.csv("lbw.csv")


lbw$vlow <- lbw$bwt < 1500
varName = names(lbw)
print(varName)
varValues = head(lbw)
print(varValues)



#Excercise 3:
#1: mean {base}	R Documentation
#Arithmetic Mean
#Description
#Generic function for the (trimmed) arithmetic mean.

#2: sd {stats}	R Documentation
#Standard Deviation
#Description
#This function computes the standard deviation of the values in x. If na.rm is TRUE then missing values are removed before computation proceeds.

#3: median {stats}	R Documentation
#Median Value
#Description
#Compute the sample median.

#4: IQR {stats}	R Documentation
#The Interquartile Range
#Description
#computes interquartile range of the x values

#5: mad {stats}	R Documentation
#Median Absolute Deviation
#Description
#Compute the median absolute deviation, i.e., the (lo-/hi-) median of the absolute deviations from the median, and (by default) adjust by a factor for asymptotically normal consistency.

#6: Extremes {base}	R Documentation
#Maxima and Minima
#Description
#Returns the (regular or parallel) maxima and minima of the input values.
#pmax*() and pmin*() take one or more vectors as arguments, recycle them to common length and return a single vector giving the 'parallel' maxima (or minima) of the argument vectors.

#7: range {base}	R Documentation
#Range of Values
#Description
#range returns a vector containing the minimum and maximum of all the given argument

#8: summary {base}	R Documentation
#Object Summaries
#Description
#summary is a generic function used to produce result summaries of the results of various model fitting functions. The function invokes particular methods which depend on the class of the first argument.

setwd("C:/Users/user/Documents/HackBio/Statistics/R work")
lbw <- read.csv("lbw.csv")

verylbw = lbw$bwt[lbw$bwt < 1500] 
print(summary(verylbw))



#Excercise 4: Calculate the correlation of age with lwt and bwt.
print(cor(lbw$age, lbw$lwt))
print(cor(lbw$age, lbw$bwt))


#Excercise 5:
pt1_smoke <- table(lbw$ptl, lbw$smoke)

table(lbw$pt1, lbw$smoke, lbw$ht)



#Excercise 6: How do these three different ways of using the prop.table function differ in their output?

#prop.table(pt1_smoke, 1) divides each value by the sum of the row it is located in
#prop.table(pt1_smoke, 2) divides each value by the sum of the column it is located in
#prop.table(pt1_smoke, 1) divides each value by the sum of all values in the table



#Excercise 7:Use the hist and boxplot to investigate the distribution of age.
hist(lbw$age, plot = TRUE)
boxplot(lbw$age, plot = TRUE)




#Excercise 8:Linear Regression
model <- lm(bwt ~ lwt, data=lbw)

#Applying summary() to model prints Min. IQ. Median, pvalue, F-statistic etc

print(names(model))
