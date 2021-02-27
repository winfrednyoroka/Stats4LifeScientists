#######Statistics Assessment#######
##Answer 1) The voters in the state that are registered to the given party  (i) a population
#The 500 registered voters  (ii) a sample
#The percentage, among all registered voters of the given party, of those that prefer a male candidate  (iii) a parameter
#The number 42% that corresponds to the percentage of those that prefer a female candidate  (iv) a statistic

##Answer 2)
setwd("C:/Users/playe/Desktop/Eshaan/Hackbio")
lbw <- read.csv("R/lbw.csv")
mean(lbw$bwt)
median(lbw$bwt)
total_births <- nrow(lbw)
#1 to find out proportions of any sort between any two column or total from a particular column data we can find the total from the column and subtract it from the total number of data points
total_births_smoker <- sum(lbw$smoke)
total_births_smoker / total_births
#2
total_low_bw <- sum(lbw$low)
total_low_bw / total_births
#3 To make contigency table we use table function 
table_contigency <- table(lbw$low, lbw$smoke)
View(table_contigency)
#4 To conduct hypothesis test we use summary function on the table and on the linear regression model of the two variables
summary(table_contigency)
#The hypothesis for this research question is that whether or not there is a relationbetween smoking mother and low birth weight among their children 
#since the p value is less than 0.05 we reject the null hypothesis and establish that there is a correlation between smoking mothers and low birth weight among children
hypothesis_test <- lm(low ~ smoke, lbw)
summary(hypothesis_test)
#5 
table_2 <- table(lbw$lwt, lbw$ht)
#to find out whether hypertension and weight of mothers have a correaltion
summary(table_2)
hypothesis_2 <- lm(lwt ~ ht, lbw)
boxplot(lwt ~ ht, lbw)
#since the p-value is 0.076 which is greater than 0.05 we can conclude that the null hypothesis is true and there is little correlation between mothers weight and hypertension
table_3 <- table(lbw$lwt, lbw$ht, lbw$bwt)
#the difference between weights of babies born by the two groups is existent but of no significance since there is very little correaltion between hypertension status and their weights 
#the conclusion is that there is little to no correlation between ht and lwt based on the p-value and null hypothesis is true

##Answer 3)

Ages_ofdept <- c(32.2, 37.5, 41.7, 53.8, 50.2, 48.2, 46.3, 65.0, 44.8)
#a
mean(Ages_ofdept)
#b
Ages_ofdept
median(Ages_ofdept)
#c
replace(Ages_ofdept, 8, 46.5)
#d 
new_median <- median(Ages_ofdept)
new_median
