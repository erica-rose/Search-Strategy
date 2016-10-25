setwd("H:/Jewell_data/Simulationsforpaper")


beta.mean <- beta.median <- matrix(NA, nrow=20,ncol=5)
#Rb.mean <- Rb.median <- matrix(NA, nrow=20,ncol=5)
betacover <- Rbcover <- NULL
totalsimulations <- 0
beta.mean <- Rb.mean <- NULL
simulations <- rep(NA, 20)

for(m in 1:20){
load(paste(m,"Simulation1Results.Rdata",sep=""))
print(s)
simulations[m] <- s
totalsimulations <- totalsimulations+s

beta.mean <- rbind(beta.mean, beta[1:s,])
Rb.mean <- rbind(Rb.mean, Rb[1:s,])

betacover <- c(betacover, ifelse(beta[1:s, 1]< truebeta | beta[1:s,5]>truebeta, 0, 1))
Rbcover <- c(Rbcover, ifelse(Rb[1:s, 1]< trueRb | Rb[1:s,5]>trueRb, 0, 1))
}

beta.sum <- apply(beta.mean[1:200,],2,mean)
Rb.sum <- apply(Rb.mean[1:200,],2,mean)

mean(betacover)
mean(Rbcover)

sim1results <- rbind(beta.sum[1],beta.sum[3],beta.sum[5], Rb.sum[1],Rb.sum[3],Rb.sum[5])


beta.mean <- beta.median <- matrix(NA, nrow=20,ncol=5)
#Rb.mean <- Rb.median <- matrix(NA, nrow=20,ncol=5)
betacover <- Rbcover <- NULL
totalsimulations <- 0
beta.mean <- Rb.mean <- NULL
simulations <- rep(NA, 20)

for(m in 1:20){
  load(paste(m,"Simulation2Results.Rdata",sep=""))
  print(s)
  simulations[m] <- s
  totalsimulations <- totalsimulations+s
  
  beta.mean <- rbind(beta.mean, beta[1:s,])
  Rb.mean <- rbind(Rb.mean, Rb[1:s,])
  
  betacover <- c(betacover, ifelse(beta[1:s, 1]< truebeta | beta[1:s,5]>truebeta, 0, 1))
  Rbcover <- c(Rbcover, ifelse(Rb[1:s, 1]< trueRb | Rb[1:s,5]>trueRb, 0, 1))
}

beta.sum <- apply(beta.mean[1:200,],2,mean)
Rb.sum <- apply(Rb.mean[1:200,],2,mean)

mean(betacover)
mean(Rbcover)

sim2results <- rbind(beta.sum[1],beta.sum[3],beta.sum[5], Rb.sum[1],Rb.sum[3],Rb.sum[5])








beta.mean <- beta.median <- matrix(NA, nrow=20,ncol=5)
#Rb.mean <- Rb.median <- matrix(NA, nrow=20,ncol=5)
betacover <- Rbcover <- NULL
totalsimulations <- 0
beta.mean <- Rb.mean <- NULL
simulations <- rep(NA, 20)

for(m in 1:20){
  load(paste(m,"Simulation4Results.Rdata",sep=""))
  print(s)
  simulations[m] <- s
  totalsimulations <- totalsimulations+s
  
  beta.mean <- rbind(beta.mean, beta[1:s,])
  Rb.mean <- rbind(Rb.mean, Rb[1:s,])
  
  betacover <- c(betacover, ifelse(beta[1:s, 1]< truebeta | beta[1:s,5]>truebeta, 0, 1))
  Rbcover <- c(Rbcover, ifelse(Rb[1:s, 1]< trueRb | Rb[1:s,5]>trueRb, 0, 1))
}

beta.sum <- apply(beta.mean[1:110,],2,mean)
Rb.sum <- apply(Rb.mean[1:110,],2,mean)

mean(betacover)
mean(Rbcover)

sim3results <- rbind(beta.sum[1],beta.sum[3],beta.sum[5], Rb.sum[1],Rb.sum[3],Rb.sum[5])