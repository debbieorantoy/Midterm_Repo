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

x<- c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x<-c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

#Data Frames
x<-data.frame(foo=1:4,bar=c(T,T,F,F))
x
nrow(x)
ncol(x)
#Names
x<-1:3
names(x)
names(x)<-c("foo","bar","norf")
x
names(x)
#Names-List
x<-list(a = 1,b = 2,c = 3)
x
#Matrix Names
m<-matrix (1:4,nrow = 2, ncol = 2 )
dimnames(m)<- list(c("a","b"), c("c", "d"))
m

#dput-ing
y<-data.frame(a=1,b="a")
dput(y)
dput(y,file="y.R")
new.y<-dget("y.R")
new.y
#Dumping
x <-"foo"
y <-data.frame(a=1, b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")
y
x
#Subsetting
x <- c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u <- x>"a"
u
x[u]
#Subsetting Lists
x<-list(foo=1:4, bar=0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]
x<- list(foo=1:4,bar=0.6,baz="hello")
x[c(1,3)]
x<- list(foo=1:4, bar=0.6, baz="hello")
name<-"foo"
x[[name]]
x$name
x$foo
#Subsetting Nested Elements
x<-list(a=list(10,12,14), b=c(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]
#Subsetting a Matrix
x<-matrix(1:6,2,3)
x[1,2]
x[2,1]
x[1, ]
x[ ,2]
x<-matrix(1:6, 2,3)
x[1,2]
x[1,2, drop=FALSE]
x<matrix(1:6,2,3)
x[1, ]
x[1, , drop=FALSE]
#Partial Matching
x<-list(aardvark=1:5)
x$a
x[["a"]]
x[["a", exact= FALSE]]
x<- c(1,2,NA,4,NA,5)
bad<-is.na(x)
x[!bad]
x<-c(1,2,NA,4,NA,5)
y<-c("a","b",NA, "d", NA, "f")
good<-complete.cases(x,y)
good
x[good]
y[good]
#Removing NA values
airquality[1:6, ]
good<-complete.cases(airquality)
airquality[good, ][1:6, ]
#Vectorized Operations
x<- 1:4;y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y
x<-matrix(1:4,2,2);y<-matrix(rep(10,4),2,2)
x*y
x/y
x %*% y

#task1
data<-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Repo\\Seatwork Midterm\\midtermseatwork_data.csv")
Rowval<-function(data,row,col){
  data[row,col]
}
Rowval(data,30,"Ozone")


#task2
Missingval<-function(data, col){
  sum(is.na(data[,col]))
}
Missingval(data,"Solar.R")

#task3
meanColumn<-function(data,rownum1,rownum2,col){
  sub<-data[rownum1:rownum2,col]
 mean(sub,na.rm=TRUE)
}
meanColumn(data,20,70,"Wind")



#load local image
  localimg <- function(location){
    library(imager)
    im <-load.image(location)
    plot(im)
  }
  localimg('C:/Users/Public/Pictures/Sample Pictures/Jellyfish.jpg')

#load URL image
  library(magick)
  URLimage <-function(source){
    image_read(source)
  }
  URLimage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Lion_waiting_in_Namibia.jpg/800px-Lion_waiting_in_Namibia.jpg")

#Resize image
  library(imager)
  img_resize <-function(img,w,h){
    pict <-load.image(img)
    x <- resize(pict,w,h)
    plot(x)
  }
  img_resize("C:/Users/Public/Pictures/Sample Pictures/Jellyfish.jpg",15,15)

#tryyy image
  library(magick)
  tryimg <-function(source){
  picc<- image_read(source)
  image_annotate(picc, "I am Bart", size = , gravity = "southwest", color = "red")
  }
  tryimg("https://upload.wikimedia.org/wikipedia/en/a/aa/Bart_Simpson_200px.png")
  


  
  #sw2 MIDTERM
  #TASK 1
  #LOAD LOCAL IMAGE
  localimg <- function(location){
    library(imager)
    im <-load.image(location)
    plot(im)
  }
  localimg('C:/Users/Public/Pictures/Sample Pictures/Koala.jpg')
  #LOAD URL IMAGE
  library(magick)
  URLimage <-function(source){
    image_read(source)
  }
  URLimage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Lion_waiting_in_Namibia.jpg/800px-Lion_waiting_in_Namibia.jpg")
  #IMAGE AUGMENTATION
  #RESIZE IMAGE
  library(imager)
  img_resize <-function(img,w,h){
    pict <-load.image(img)
    x <- resize(pict,w,h)
    plot(x)
  }
  img_resize("C:/Users/Public/Pictures/Sample Pictures/Koala.jpg",15,15)
  #grayscale
  library(imager)
  grayimage <-function(source, cond){
    pic <-load.image(source)
    if(cond==TRUE){
      imageee<- grayscale(pic)
      plot(imageee)
    }
    else {
      plot(pic)
    }
  }
  grayimage('C:/Users/Public/Pictures/Sample Pictures/Koala.jpg', TRUE)
  #invertimage
  library(magick)
  invertimg <-function(source,din){
    picture<- image_read(source)
    image_rotate(picture, din)
  }
  invertimg('C:/Users/RM A-225/Pictures/bart.png',180)
  
  #augmented to another directory
  savingImg <-function(source, filename){
    library(imager)
    image <- load.image(source)
    x <- "C:/Users/RM A-225/Documents/Augmented_images/"
    savef <- paste(x,filename)
    save.image(image,savef)
  }
  savingImg("C:/Users/RM A-225/Pictures/bart.png","bart_augment.jpg")




