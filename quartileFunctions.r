#function prints 4 different results: 1st,2nd,3rd, and interquartile range

function (z)
{
z <- sort(z, decreasing = FALSE)

#first quartile predictor
e <- length(z)/4
e <- ceiling(e)
f <-length(z)/4
f <- floor(f)

#second quartile predictor
h <- length(z)/2
h <- ceiling(h)
i <-length(z)/2
i <- floor(i)

#third quartile predictor
j <- length(z)*3/4
j <- ceiling(j)
k <-length(z)*3/4
k <- floor(k)

#outputs for the quartile results if even
q1 <- (z[e+1]+z[f])/2
q2 <- (z[h+1]+z[i])/2
q3 <- (z[j+1]+z[k])/2

#outputs for the quartile results if odd
q11 <- e
q22 <- h
q33 <- j

#interquartile range
q4 <- q3-q1
q44 <- q33-q11

if(length(z)%%2==0){
sprintf("The first quartile is: %g, the second quartile is: %g, the third quartile is: %g, the interquartile range is: %g",q1,q2,q3,q4)
} else
		sprintf("The first quartile is: %g, the second quartile is: %g, the third quartile is: %g the interquartile range is: %g",q11,q22,q33,q44)	
}
