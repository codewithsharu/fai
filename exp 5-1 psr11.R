X=c(2,3,6,8,11)
X
N=5
N
n=2
n
mean_X=mean(X)
mean_X
var_X=(N-1)/N*var(X)
var_X
sd_X=sd(X)
sd_X
samples_of_size2=expand.grid(X, X)
samples_of_size2
sample_means_of_size2=apply(samples_of_size2,1,mean)
sample_means_of_size2
mean_of_sampling=mean(sample_means_of_size2)
mean_of_sampling
var_of_sampling=var(sample_means_of_size2)
var_of_sampling
sd_of_sampling=sd(sample_means_of_size2)
sd_of_sampling
samples_of_size2=combn(X, m=2, simplify=F)
samples_of_size2
cat("the mean of the population is :", mean_X , "\n")
cat("the variance of the population is :", var_X, "\n")
cat("the standard deviation of the population is :", sd_X, "\n")
cat("the mean of the sampling distribution of means is :", mean_of_sampling, "\n")
cat("the standard deviation of the sampling distribution of means is :", sd_of_sampling, "\n")