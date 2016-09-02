function(z)
{
z <- sort(z, decreasing = FALSE)
e <- length(z)/2
e <- ceiling(e)
f <- length(z)/2
f <- floor(f)

if(length(z)%%2==0){
return ((z[e+1]+z[f])/2) #if number of elements are even
} else return (z[e])     #if number of elements are odd
}
