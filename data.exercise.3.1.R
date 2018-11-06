set.seed(1786)
data.exercise.3.1<-exp(matrix(rnorm(2000),nrow=100))
index1.temp<-sample(1:100,10)
index2.temp<-sample(1:20,10)
for(i in 1:10){
  data.exercise.3.1[index1.temp[i],index2.temp[i]]<--1
}
my.data<-data.exercise.3.1
count.negatives<-0
for(i in 1:length(my.data[,1])){
  negative<-(min(my.data[i,])<0)
  count.negatives<-count.negatives+negative
  if(count.negatives<=3 & !negative){
    cat("The mean of row",i,"is",mean(my.data[i,]),"\n")
  }
  if(count.negatives<=3 & negative){
    cat("<Row",i,"contains negative values>\n")
  }
  if(count.negatives>3){
    cat("Too many negative values\n")
    break
  }
}