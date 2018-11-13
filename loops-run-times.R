y<-matrix(rnorm(1000000),nrow=1000)
z<-0*y
time1<-as.numeric(Sys.time())
 #loop:
for(i in 1:1000){
    for(j in 1:1000){
        z[i,j]<-y[i,j]^2
    }
 }
 time2<-as.numeric(Sys.time())
 # using object form in R:
z<-y^2
 time3<-as.numeric(Sys.time())
# run time increase factor:
z2<-(time2-time1)/(time3-time2)


runtime.factors<-function(k){
    y<-matrix(rnorm(100),nrow=k)
    z<-0*y
    time1<-as.numeric(Sys.time())
    for(i in 1:k){
        for(j in 1:k){
            z[i,j]<-y[i,j]^2
        }
    }  
    time2<-as.numeric(Sys.time())
    z<-y^2
    time3<-as.numeric(Sys.time())
    (time2-time1)/(time3-time2)
}