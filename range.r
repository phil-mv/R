function(z)
{
z <- sort(z, decreasing = FALSE)
f <- z[1]
l <- tail(z,n=1)
z <- l-f
return(z)
}
