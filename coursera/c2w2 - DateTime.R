## Date
x<- as.Date("1970-01-01")
x

unclass(x)

unclass(as.Date("1970-01-02"))

from <- as.Date("2017-01-01")
to<- as.Date("2016-12-01")

## Daysbetween
unclass(from)-unclass(to)
from-to

## Time
x<-  Sys.time()
x

p<- as.POSIXlt(x)
names(unclass(p))

p$sec

datestring <- c("November 9, 2012 9:10", "December 9, 2011 9:10")
x2<- strptime(datestring, "%B %d, %Y %H:%M")
x2

class(x2)

?strptime

## local is the default
## z is in local
## x in GMT
z<- as.POSIXct("2012-10-25 01:00:00")
x<- as.POSIXct("2012-10-25 01:00:00", tz="GMT")
y<- as.POSIXct("2012-10-25 06:00:00", tz="GMT")
z-x
y-x

str(unclass(x2))


t2<-as.POSIXlt(Sys.time())
unclass(t2)
str(unclass(t2))
t2$min

t1<- Sys.time()
difftime(Sys.time(), t1, units = 'days')