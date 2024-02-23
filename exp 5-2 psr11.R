X=c(4, 8, 12, 16, 20, 24) 
X 
N=length(X) 
N 
n=2 
n 
Mean_X=mean(X) 
Mean_X
Var_X=(N-1)/N*var(X) 
Var_X 
Sd_X=sqrt(Var_X) 
Sd_X  
No_of_samples=choose(N,n) 
No_of_samples    
Samples_of_size_2=combn(X, m=2) 
Samples_of_size_2 
Sample_means_of_size_2=apply(Samples_of_size_2, 2, mean) 
Sample_means_of_size_2  
Mean_of_sampling_distribution=mean(Sample_means_of_size_2) 
Mean_of_sampling_distribution  
Var_of_sampling_distribution=var(Sample_means_of_size_2) 
Var_of_sampling_distribution  
Sd_of_sampling_distribution=sd(Sample_means_of_size_2) 
Sd_of_sampling_distribution  
cat("the mean of the population is :", Mean_X , "\n") 
cat("the variance of the population is :", Var_X, "\n") 
cat("the standard deviation of the population is :", Sd_X, "\n") 
cat("the mean of the sampling distribution of means is  :", Mean_of_sampling_distribution, "\n") 
cat("the variance of the sampling distribution of means is  :", Var_of_sampling_distribution, "\n") 
cat("the standard deviation of the sampling distribution of means is :", Sd_of_sampling_distribution, "\n")