
NMC = 5000
alpha = 0.05

power_storage = c()

p_reality = 0.72
p_null = 0.62

for(n in 3:600){
  pvalue_storage = c()
  
  for(i in 1:NMC){
    kicks = rbinom(1, n, p_reality)
    xbar = kicks/n
    
    standXbar = (xbar - p_null) / sqrt(p_null * (1-p_null) / n)
    pvalue_storage[i] = pnorm(q=standXbar, mean=0, sd=1, lower.tail=FALSE)
  }
  power_storage[n] = mean(pvalue_storage<alpha)
  
}

plot(x=power_storage, type="l", main="Power via Number of \nObservations per Sample",
     ylab="Power", xlab="n-Observations per Sample")



