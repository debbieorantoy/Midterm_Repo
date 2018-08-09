#task1
data<-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Repo\\Seatwork Midterm\\midtermseatwork_data.csv")
Rowval<-function(data,row,col){
  data[row,col]
}
Rowval(data,30,"Solar.R")


#task2
Missingval<-function(data, col){
  sum(is.na(data[,col]))
}
Missingval(data,"Ozone")

#task3
meanColumn<-function(data,rownum1,rownum2,col){
  sub<-data[rownum1:rownum2,col]
  mean(sub,na.rm=TRUE)
}
meanColumn(data,45,60,"Wind")
