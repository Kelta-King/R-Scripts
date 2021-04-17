
x = 1:1000


hist(x, col='red')

n <- 4     # Number of trials (population size)
s <- 2000  # Number of simulations
m <- c(20, 100, 500, 1000)

EX <- n*p
VarX <- n*p*(1-p)

Z_score <- matrix(NA, nrow = s, ncol = length(m))
for (i in 1:s){
  for (j in 1:length(m)){ # loop over sample size
    samp <- rbinom(n = m[j], size = n, prob = 0.05)
    sample_mean <- mean(samp) # sample mean
    # Calculate Z score for mean of each sample size
    Z_score[i,j] <- (sample_mean-EX)/sqrt(VarX/m[j]) 
  }
}

set.seed(2)
sample(1:6, 10, replace = TRUE)

set.seed(2)
sample(1:5, 10, replace = TRUE)


set.seed(3)

data<-c()
for(i in 1:20){
	data <- c(data, sample(iris$Sepal.Length, 5))
}
x <- c(data)

hist(x)


data <- rnorm(150, 0, 1)
s <- c()
n <- 1000 #Number of samples
k <- 30 #size of each samples

for (i in 1:n){
	s[i] = mean(sample(data, k, replace = TRUE))
}
hist(s)



data <- iris
s30 <- c()
s50 <- c()
s500 <- c()
n =9000
for ( i in 1:n){
s30[i] = mean(sample(data$Sepal.Length,30, replace = TRUE))
s50[i] = mean(sample(data$Sepal.Length,50, replace = TRUE))
s500[i] = mean(sample(data$Sepal.Length,500, replace = TRUE))
}
par(mfrow=c(1,3))
hist(s30, col ="lightblue",main="Sample size=30",xlab ="wall thickness")
abline(v = mean(s30), col = "red")

hist(s50, col ="lightgreen", main="Sample size=50",xlab ="wall thickness")
abline(v = mean(s50), col = "red")

hist(s500, col ="orange",main="Sample size=500",xlab ="wall thickness")
abline(v = mean(s500), col = "red")


