x <-110
x
y<-15:20
y
y<-1.35
y
x<-0.6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
x<-c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)
x <-list(1, "a", TRUE, 1+4i)
x
m<-matrix(nrow=2, ncol =3)
m
dim(m)
attributes(m)
m<-matrix(1:6, nrow =2, ncol=3)
m
m<-1:10
m
dim(m) <-c(2,5)
m
x<- 1:3
y<- 10:12
cbind(x,y)
rbind(x,y)

x<-factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)

y<-factor(c("male", "female", "female", "male", "male"))
y
table(y)
unclass(y)

y<-factor(c("male", "female", "female", "male", "male"),levels = c("male", "female"))
y

#SW PRELIM
#Q1
z <- 12 
class(z)
#Q2
z <- c(12, FALSE)
class(z)
#Q3
m <- c(10,13, 15, 33)
n <- c(13, 22, 88, 110)
rbind(m, n)
#Q4
z <- list(22, "a", "c", FALSE)
z[[2]] 
#Q5
z <- 10:40 
y <- 3
z + y

#Q6
x <- c(117, 114, 14, 15, 113, 112, 110) 
x[x>100]<- 14
x
#Q7
names(hw1_data)
#Q8
hw1_data[1:12, ]
#Q9
nrow(hw1_data)
ncol(hw1_data)
#Q10
tail(hw1_data,8)
#Q11
hw1_data[112,3]
hw1_data[42,4]
hw1_data[82,2]
#Q12
sum(is.na(hw1_data))
sum(is.na(hw1_data[1:153,1]))
sum(is.na(hw1_data[1:153,2]))
sum(is.na(hw1_data[1:153,3]))
sum(is.na(hw1_data[1:153,4]))
#Q13
apply(subset(hw1_data, !is.na(Ozone), select = Ozone),2,mean)
apply(subset(hw1_data, !is.na(Wind), select = Wind),2,mean)
apply(subset(hw1_data, !is.na(Temp), select = Temp),2,mean)
#Q14
sub = subset(hw1_data, Ozone > 26 & Temp > 80, select = Solar.R)
apply(sub,2,mean)
#Q15
apply(subset(hw1_data, Month==8, select = Temp), 2,mean)
apply(subset(hw1_data, Month==6, select = Temp), 2,mean)
#Q16
apply(subset(hw1_data, Month==5&!is.na(Ozone), select = Ozone), 2,max)


add5numbers <-function(num1,num2,num3,num4,num5){
  sum_nums= num1 + num2 + num3 +num4 + num5
  sum_nums
}

x <- 1:200
subset_data <- function(datasit, min_datasit, max_datasit){
  subset_param <- (datasit>min_datasit)&(datasit<max_datasit)
  datasit[subset_param]
}

MeanFunction <- function(dataset_csv,removeNA =TRUE){
  col_num <-ncol(dataset_csv)
  means_per_col <- numeric(col_num)
  for(element in 1:col_num){
    means_per_col[element] <- mean(dataset_csv[ ,element],na.rm = removeNA)
  }
  means_per_col
}


data <-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Repo\\Seatwork 2 Midterm\\midtermseatwork_data.csv")
MeanWind <-function(data, Ozoneval,Tempval){
  apply(subset(data, Ozone>Ozoneval&Temp>Tempval&!is.na(Wind),select= Wind,),2,mean)
}

data <-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Repo\\Seatwork 2 Midterm\\midtermseatwork_data.csv")
MeanTemp <-function(data,MonthValue, DayValue){
  apply(subset(data, Month==MonthValue&Day==DayValue&!is.na(Temp),select = Temp),2,mean)
}

data <-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Repo\\Seatwork 2 Midterm\\midtermseatwork_data.csv")
MinOzone <- function(data,Monthvalue){
  apply(subset(data,Month==Monthvalue&!is.na(Ozone), select = Ozone),2,min)
}


