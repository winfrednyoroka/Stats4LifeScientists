setwd("C:/Users/user/Documents/HackBio/Statistics/R work")
lbw <- read.csv("lbw.csv")

                    #Question 1
#1) Sample 2) Parameter 3) Statistic 4) Population

                    #Question 2
#Question 2(1): Use R to compute the mean and median of the birthweight
cat("The mean and median of birthweight is", mean(lbw$bwt), median(lbw$bwt), '\n')
#mean = 2944.286, median = 2977

#Question 2(2): Steps in hypothesis Testing
#1) State null hypothesis (Ho) 
#2) State alternative hypothesis (Ha)
#3) State level of significance
#4) State choice of appropriate test statistic
#5) Evaluate test statistic
#6) Decision to reject or not reject Ho. Conclusion.

#Question 2(Hypothesis Testing Practical)
#(1) Proportion  = Number of smoking mothers/number of total births
smokeProportion = length(lbw$smoke[lbw$smoke>0])/length(lbw$smoke)
cat("Proportion of birth from smoking mothers is", smokeProportion, '\n')
#Proportion of birth from smoking mothers = 0.39

#(2) Proportion  = Number of low birth weight/number of total births
lbwProportion = length(lbw$low[lbw$low==1])/length(lbw$low)
cat("Proportion of births from low birth weight is", lbwProportion, '\n')
#Proportion of low birth weight = 0.312

#(5) Boxplot of weight by hypertension
boxplot(lbw$bwt ~ lbw$ht, ylab = "Birth Weight", xlab = "History of Hypertension", plot = TRUE)


                        #Question 3
#(a) Calculate mean age of faculty members with ages: 32.2, 37.5, 41.7, 53.8, 50.2, 48.2
#46.3, 65.0, 44.8
ageVec <- c(32.2, 37.5, 41.7, 53.8, 50.2, 48.2, 46.3, 65.0, 44.8)
cat("The mean age is", mean(ageVec), "years\n")
#Mean age is 46.63 years

#(b) Calculate median age
cat("The median age is", median(ageVec), "years\n")
#Median age is 46.3 years

#(c) If person of 65 is replaced with 46.5, find new mean age
ageVec[8] = 46.5
cat("The new mean age is", mean(ageVec), "years\n")
#The new mean age is 44.58 years

#(d) The new median age
cat("The new median age is", median(ageVec), "years\n")
#The new median age is 46.3 years