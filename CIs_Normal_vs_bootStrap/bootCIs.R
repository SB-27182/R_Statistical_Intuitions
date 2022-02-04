par(col="white", col.axis="white", col.lab="white", bg="black", col.main="white", col.sub="white")

CI_maker = function(n, mu, sigma, alpha){
  x = rnorm(n, mu, sd=sigma)
  xbar = mean(x)
  LL = xbar - qnorm(1-alpha/2)*sigma/sqrt(n)
  UL = xbar + qnorm(1-alpha/2)*sigma/sqrt(n)
  
  captured = (mu<UL) & (mu>LL)
  return(c(LL, UL, captured))
}





NMC = 100
CIs = replicate(NMC, CI_maker(n=20, mu=1.3, sigma=3, alpha=0.05))
dim(CIs)
CIs[3,]
table(CIs[3,])/100
plot(c(0,0), pch=16, col="#89888f", ylim=c(0,NMC),
     xlim=c(min(CIs[1,]), max(CIs[2,])),
     xlab="CI Range",
     ylab="CI's Index",
     main="Confidence Interval Behavior")




abline(v=1.3, col="green")
for(i in 1:NMC){
  if(CIs[3,i]==1){
    tempcolor = "gray"
    
  }else {
    tempcolor = "red"
  }
  segments(CIs[1,i], i, CIs[2,i], i, col=tempcolor)
}

#whats the width? 
mean(CIs[2,])
mean(abs(CIs[1,] - CIs[2,]))



#------------------------------------------------------------------------------------------------------------------

alpha=0.05
covidVec = rnorm(n=50, mean=1.3, sd=3)

simSamp_maker = function(){ #INCLUDE THIS IN THE ARTICLE!
  simSamp = sample(covidVec, size=length(covidVec), replace=TRUE)
  return (mean(simSamp))
}


#Make 5000 boot-sim-samples. Then return 5000 respective means.
simMeans_distribution = replicate(simSamp_maker(), n=5000)
hist(simMeans_distribution, col="#e8e4d5")


#--
coverage = c()
width = c()
LLs = c()
ULs = c()
for(i in 1:300){
  simMeans = replicate(simSamp_maker(), n=300)
  interval = quantile(simMeans, c(alpha/2, 1-alpha/2))
  coverage[i] = (interval[1]<1.3) & (interval[2]>1.3)
  width[i] = abs(interval[1] - interval[2])
  LLs[i] = interval[1]
  ULs[i] = interval[2]
}
mean(coverage)                     
mean(width)
mean(ULs)
mean(LLs)
#--


plot(c(0,0), pch=16, col="#89888f", ylim=c(0,NMC),
     xlim=c(min(LLs), max(ULs)),
     xlab="CI Range",
     ylab="CI's Index",
     main=paste("Confidence Interval Behavior\nwith alpha value: [", alpha, "].", sep=""))

abline(v=1.3, col="green")




for(i in 1:NMC){
  if(coverage[i]==1){
    tempcolor = "gray"
    
  }else {
    tempcolor = "red"
  }
  segments(LLs[i], i, ULs[i], i, col=tempcolor)
}










#For the bernouli issues, make one of the confidence interval plots, for both the CLT and the boot strap.






#----------------------------------------------------------

