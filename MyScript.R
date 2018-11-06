#Creating functions with R
fx<-function(x){return (3*sin(x/2)+x)}
my.display<-function(x,display=FALSE,type="",prob=FALSE){
	if(display == TRUE & type == "") cat("Please specify type as either hist or density")
	if(display == TRUE & type != "")		
		if(type == "hist")
			if(prob)
				hist(x, freq=FALSE)
			if(!prob)
				hist(x)
		if(type == "density")
			plot(density(x))	
	if(display == TRUE & type == "") {
		cat("Summary of input: \n")
		summary(x)
	}
}


#Runtime
y<-matrix(rnorm(100000),nrow=1000)
z<-0*y
time1<-as.numeric(Sys.time())

#loop
for(i in 1:1000){
	for(j in 1:1000){
		z[i,j]<-y[i,j]^2
	}
}

time2<-as.numeric(Sys.time())
#using object from in R:
z<-y^2
time3<-as.numeric(Sys.time())
#run time increase factor
(time2-time1)/(time3-time2)