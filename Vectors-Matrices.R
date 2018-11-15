row<-matrix(rep(1:100,100),nrow=100)
column<-matrix(rep(1:100,100),nrow=100,byrow=T)
A<-3*column^3/(1+row*column)
sum(A)
sum(A[row<=column])

set.seed(9852)
my.data<-list()
for(i in 1:100){
  my.data[[i]]<-matrix(rnorm(16),nrow=4)
}
my.index<-list()
for(i in 1:100){
  my.index[[i]]<-(my.data[[i]]<0)
}
my.negatives<-matrix(rep(0,16),nrow=4)
for(i in 1:100){
  my.negatives<-my.negatives+my.index[[i]]
}
my.negatives
my.negative.values<-numeric(0) 
for(i in 1:100){
  my.negative.values<-c(my.negative.values,my.data[[i]][my.index[[i]]])
}