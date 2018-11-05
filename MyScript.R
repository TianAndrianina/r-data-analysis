#Creating functions with R
fx<-function(x){return (3*sin(x/2)+x)}
print(fx(0))
print(fx(-1))
print(fx(pi))
plot(fx, -7,7)