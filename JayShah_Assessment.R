lbw <- read.csv("lbw.csv")

# Exercise 1
lbw['bwt']

#Exercise 2
lbw$vlow <- lbw$bwt <1500
names(lbw)
head(lbw)

#Exercise 3

LowBirthweight <- lbw[lbw['bwt']<2500,]
?mean
mean(LowBirthweight[,'age'])

# Exercise 4
cor(lbw$lwt, lbw$bwt)


#Exercise 5
ptl_smoke <- table(lbw$ptl, lbw$smoke)
addmargins(ptl_smoke)

table(lbw$ptl, lbw$smoke, lbw$ht)


#Exercise 6
prop.table(ptl_smoke, 1)
prop.table(ptl_smoke, 2)
prop.table(ptl_smoke)

# These 3 ways appear to create a 
# a 2-way freq table with row wise proportion ,
# a 2-way freq table with column wise proportion,
# 2 way frequency table with entire proportion
# respectively 


#Exercise 7
hist(lbw$age, main = "Age")
boxplot(lbw$age)

#Exercise 8
model <- lm ( bwt~lwt, data=lbw)
names(model)
summary(model)


# The summary function gives a summary of the result of our fitted model. It 
# lists the formula used, and gives us other statistics like standard error, 
# t value, R squared statistic, f statistic, p value, etc. 
