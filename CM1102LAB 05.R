#read the name.csv file
import_data<- read.csv("names.csv")
print(import_data)
#To access all the rols present in the second column - Male_Names
import_data [[2]]
#To access all the rows, present in the Female_Names
import_data [[4]]
#to acces elements at 3rd row and 5th column
import_data[3,5]
#To access items at 1st, 3rd, 5th, 7th, 9th Rows and 2nd, 4th, 6th, 8th, 10th column
import_data[c(1,3,5,7),c(1234)]
#To access items at 22, 34, 46, 58 Rows and 3rd to 5th columns
import_data [c(22,34,46,58),c(3:5)]
#Display male numbers in between 308706 to 316613
names<-subset(import_data, MaleNumber>308706 & MaleNumber <316613)
print(names)
#Display male numbers in between 308706 to 316613 and FemaleNumber in between 316285 to 359143
names<-subset(import_data, maleNumber>308706 & maleNumber <316613 & Femalenumber>316285 & Femalenumber<359143)
print(names)
#Display male names in alphabetic order
sort(import_data$Male_Names)
#Display female names in alphabetic order
sort(import_data$Female_Names)

#Download the lab marks.csv file
#Create a folder named importdata
#Find your current working directory
getwd()
#Set your working directory to importdata
setwd("C:/Users/2216482/Documents")
#Now save labmarks.csv to current working directory
setwd("C:/Users/2216482/Documents")
import_data<-read.csv("labmarks.csv")
print(import_data)
setwd("C:/Users/2216482/Documents/import data")
write.csv(import_data,"labmarks.csv")
#Read the lab marks.csv file from current working directory
read_data<-read.csv("labmarks.csv")
View(read_data)
#Use the above listed all the functions to get the details of the data
print(read_data)
View(read_data)
typeof(read_data)
str(read_data)
#Display the student details with set number 1
setone<-subset(read_data,setno==1)
#Display the student details with booklet number from 11 to 20

#Display the top 10 records
head(read_data, 10)
#Display the bottom 25 records
tail(read_data, 25)
#Find the maximum mark in each module
max(read_data$X19CS3026)
max(read_data$X19CS3027)
max(read_data$X19CS3028)
max(read_data$X19CS3029)
max(read_data$X19CS3030)
#Find the minimum mark in each module
min(read_data$X19CS3026)
min(read_data$X19CS3027)
min(read_data$X19CS3028)
min(read_data$X19CS3029)
min(read_data$X19CS3030)
#Find the quantile in each module
quantile(read_data$X19CS3026)
quantile(read_data$X19CS3027)
quantile(read_read$X19CS3028)
quantile(read_read$X19CS3029)
quantile(read_read$X19CS3030)
# Display the student with maximum mark in each module
maxmarks<-subset(read_data, X19CS3026 == max(X19CS3026))
print(maxmarks)
maxmarks<-subset(read_data, X19CS3027 == max(X19CS3027))
print(maxmarks)
maxmarks<-subset(read_data, X19CS3028 == max(X19CS3028))
print(maxmarks)
maxmarks<-subset(read_data, X19CS3029 == max(X19CS3029))
print(maxmarks)
maxmarks<-subset(read_data, X19CS3030 == max(X19CS3030))
print(maxmarks)
#Display the student with minimum mark in each module
minmarks<-subset(read_data, X19CS3026 == max(X19CS3026))
print(minmarks)
minmarks<-subset(read_data, X19CS3027 == max(X19CS3027))
print(minmarks)
minmarks<-subset(read_data, X19CS3028 == max(X19CS3028))
print(minmarks)
minmarks<-subset(read_data, X19CS3029 == max(X19CS3029))
print(minmarks)
minmarks<-subset(read_data, X19CS3030 == max(X19CS3030))
print(minmarks)
#Display the students who scored more than 40 marks in all modules
marks<-subset(read_data, X19CS3026 >40 & X19CS3027 >40 & X19CS3028 >40 & X19CS3029 >40 & X19CS3030 >40)
print(marks)
#Now save the result into new .csv file
write.csv(marks,"maxmarks.csv")
mark_data<-read.csv("maxmarks.csv")
print(mark_data)
View(mark_data)
#Display the students who scored less than 40 marks in each course
marks<-subset(read_data, X19CS3026 <40 & X19CS3027 <40 & X19CS3028 <40 & X19CS3029 <40 & X19CS3030 <40)
print(marks)
#Now save the result into new .csv file
write.csv(marks,"minmarks.csv")
mark_data<-read.csv("minmarks.csv")
print(mark_data)
View(mark_data)
#Display the students who scores ranged in between 30 to 50 marks in each course
marks<-subset(read_data,X19CS3026 >35 & X19CS3026 >40 & X19CS3027 >35 & X19CS3027 >40 & X19CS3028 >35 & X19CS3028 >40 & X19CS3029 >35 & X19CS3029 >40 & X19CS3030 >35 & X19CS3030 >40) 
print(marks)
#Now save the result into new .csv file
write.csv(marks,"rangemarks.csv")
mark_data<-read.csv("rangemarks.csv")
print(mark_data)
View(mark_data)
