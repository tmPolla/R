cat("\014")

library(data.table)

DF=data.frame(x=rnorm(9), y=rep(c("a","b","c"),each=3), z=rnorm(9))
head(DF,3)


DT=data.table(x=rnorm(9), y=rep(c("a","b","c"), eahc=3), z=rnorm(9))
head(DT,3)

# list of available tables and some core info about them
tables()

#subset
DT[2,]

#print everything where the y column equal to a
DT[DT$y=="a",]


# print  mean and sum per column
DT[,list(mean(x), sum(z))]


DT[, table(y)]

#add new simple calculated column
DT[, w:=z^2]

#add new multiple operation calculated column; multiple calculation are in {}
DT[,m:={tmp<-(x+z); log2(tmp+5)}]

#add new column as boolean
DT[,a:=x>0]

#set table key and merge tables
DT1<- data.table(x=c('a','a','b','dt1'),y=1:4)
DT2<- data.table(x=c('a','b','dt2'), z=5:7)
DT1
DT2
setkey(DT1,x); setkey(DT2,x)
merge(DT1,DT2)