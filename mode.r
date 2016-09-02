#important to use library(dplyr) before running function
#use -> install.packages("dplyr")
#use -> library("dplyr")

function(x)
{
dat <- data.frame(Mode = x)
z <- dat %>%
  group_by(Mode) %>%
  summarise(Frequency = length(Mode)) %>%
  arrange(desc(Frequency))%>%
  slice(1)

return(z)
}
