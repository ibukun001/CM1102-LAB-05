import_data<- read.csv("tb.csv")
print(import_data)
less1990 <- subset(import_data, year1990 < 200)
ggplot(less1990, aes(year1990)) + geom histogram() + facet wrap (~country)

#Create a geom point chart using the years 1990 and 1991, then colour it with 1992 
#and finally size it with 1993
ggplot(import_data,aes(x=year1990, y=year1991, color= 1992,size=year1993)) + geom_point()



Show all of the 2006 year's details in sorted order.





#Display the list of cases with more than 500 in 1990 and 1991 and plot the geom bar 
#with 2006 year and fill with country.

listcases<- subset(import_data, year1990. 500 & year1991 >500)
ggplot(listcases, aes(yeear2006, fill = country)) + geom_bar

#List the cases from the years 2006 and 2007 that fell between 100 and 500.
af<- subset(import_data, year2006<100, year2006 < 500 & year2007 < 100, year2007 < 500)
plot(af$year2006,af$year2007,col = rep(1:2, each = 10), pch =1)

#List the nations with TB cases that begin with the initial "A," then draw a boxplot for 
the period from 1990 to 1995.
import_data[grep()]