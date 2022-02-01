#Maximum Likelihood functions:
lnL_Normal = function(data, mu){
  y = sum( (data-mu)^(2) ) + log(2*pi)*(10/2)
}

L_Normal = function(data, mu){
  y = -1*(2*pi)^(-(length(data)/2)) * exp(-0.5*(sum((data-mu)^2)))
}




#Discrete Data...
frogs = c(4.87,3.89,6.16,5.84,4.00,3.25,3.68,4.36,4.14,5.14,3.61)
xbar = mean(frogs)
print(xbar)
mu_domain = seq(from=0, to=7, by=0.05)


#...But Clearly the function is not Discrete. WHy? Because this is a function of *parameter values* --> ie: The discrete sample are the PARAMETERS.
plot(mu_domain, sapply(mu_domain, lnL_Normal, data=frogs), xlab="mu",
     ylab="L(mu|X, sigma)", main="linear-Normal-Likelihood of frog weights", 
     type ="l", lwd=2)




#Optimization via gradient-descent(?)
#------------------
optim(par=1, fn=function(mu){sapply(mu,L_Normal,data=frogs)}, control=list(fnscale=-1),method="Brent",lower=0,upper=7)






#-------------------------------------------------------------------
lnL_Exponential = function(lambda, data){
  L = (length(data)*log(lambda)) -  (lambda * (sum(data)))
  
}

L_Exponential = function(lambda, data){
  L = lambda^(length(data)) * exp(-lambda*sum(data))
}

  

l_domain = seq(from=0, to=10, by=0.005)

plot(l_domain, sapply(l_domain, L_Exponential, data=datas), 
     type ="l", lwd=2)




#Optimization via gradient-descent(?)
#------------------
optim(par=1, fn=function(mu){sapply(mu,L_Normal,data=frogs)}, control=list(fnscale=-1),method="Brent",lower=0,upper=7)
