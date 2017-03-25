#######################
#Házi Feladat III.    #
#Programozás I.       #
#2016/2017 II. félév  #
#Gallina Beáta        #
#2017.03.23.          #
#######################

###2. Feladat

##1.)

hossz<-trunc(runif(5, 10, 20))

v1<-runif(hossz[1], 1,2)
v2<-runif(hossz[2], 1,2)
v3<-runif(hossz[3], 1,2)
v4<-runif(hossz[4], 1,2)
v5<-runif(hossz[5], 1,2)

mylist <- list(v1, v2, v3, v4, v5)

##2.)

z <- NULL
for (i in 1:length(mylist)){
  z[i] <- length(mylist[[i]])
  as.vector(z[i])
}

#Ellenőrzések:

z #Jó a karakterhossz#
is.vector(z) #z egy vektor#

##3.)

z2 <- lapply(mylist, length)

is.list(z2) #Tényleg lista#

##4.)

z_asvect <- sapply(mylist, length, simplify = T)

is.vector(z_asvect) #Tényleg vektor#

###3. Feladat

##1.) Behívom a datasetet

data(chickwts)
head(chickwts)

##2.)

df <- aggregate(chickwts$weight, by = list(feed = chickwts$feed), mean)
names(df)[2] <- "atlsuly"

##3.)

df <- df[order(df$atlsuly, decreasing=T), ]
df

###4. Feladat

##1.)


mymatrix <- matrix(NA, 50, 10)

for(j in 1:nrow(mymatrix)){
  mymatrix[j, ] <- rnorm(10, 0, j)
}

#Ellenőrzés: kb. megegyezik a sor számával, gondolom azért nem pontosan, mert 
#kicsi az esetszám

sd(mymatrix[48, ])


##2.) Szórások soronként for ciklussal:

dev <- NULL
for (j in 1:nrow(mymatrix)){
  dev[j] <- sd(mymatrix[j, ])
}
dev


##3.) SZórások soronként apply fgv-el:

apply(mymatrix, 1, sd)

##4.)

#normalizálás:

mymatrix2 <- 2*((mymatrix-min(mymatrix))/(max(mymatrix)-min(mymatrix)))-1

#Ellenőrzés:
min(mymatrix2)
max(mymatrix2)

#sorok átlaga:

apply(mymatrix2, 1, mean)

###5. Feladat

##1.)

if (!("fivethirtyeight" %in% installed.packages())) {
  install.packages("fivethirtyeight")
}
library(fivethirtyeight)

data(comic_characters)

head(comic_characters)

##2.)

comic_characters$name <- 
  sapply((strsplit(comic_characters$name, " (", fixed = T)), "[",1) 


##4.)

source("~/homework-03/homework-03/src/homework-03-functions.R")

get_gender ("Thor")
get_gender ("Katherine Pryde")
get_gender ("Loki Laufeyson")