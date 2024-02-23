pdf_function_of_x=function(x){3/2*(1-x^2)} 
pdf_function_of_x 
Px_0.1_0.2=integrate(pdf_function_of_x, lower=0.1,upper=0.2)$value 
Px_0.1_0.2 
Px_0.4=integrate(pdf_function_of_x,lower=0,upper=0.4)$value 
Px_0.4 
Px_0.5= integrate(pdf_function_of_x,lower=0.5,upper=1)$value 
Px_0.5 
Mean_calculation=function(x){return(x*pdf_function_of_x(x))}  
Mean_of_x=integrate(Mean_calculation,lower=0,upper=1)$value 
Mean_of_x 
Mean_square_calculation=function(x){return(x^2*pdf_function_of_x(x))} 
Mean_square_of_x=integrate(Mean_square_calculation,lower=0,upper=1)$value  
Mean_square_of_x 
Variance_of_x= Mean_square_of_x-Mean_of_x^2 
Variance_of_x
Standard_deviation_of_x=sqrt(Variance_of_x) 
Standard_deviation_of_x 
x=seq(from=0,to=1,length.out=1000) 
plot(x, pdf_function_of_x(x), type="l" ,col="red",main="the graph of pdf p(x)", xlab="X-values",ylab="pdf f(x)
values", lwd=3)