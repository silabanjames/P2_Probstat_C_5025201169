# No 1
## sebelum
x <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)

## sesudah
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

selisih <- x - y

##1a
sd_sample <- sd(selisih)
sd_sample

##1b
t.test(x, y,  paired = TRUE)

##1c
t.test(x, y, alternative = "less", paired = TRUE, mu = 0)


#No 2
install.packages("BSDA")
library(BSDA)

tsum.test(mean.x=23500, s.x = 3900, n.x=100, alternative = "greater", mu = 20000)

#No 3

qt(p=.05/2, df = 44, lower.tail = FALSE)

tsum.test(
  mean.x = 3.64,
  s.x = 1.67,
  n.x = 19,
  mean.y = 2.79,
  s.y = 1.32,
  n.y = 27,
  alternative = "two.sided",
  mu = 0,
  var.equal = TRUE,
  
)

# Soal 4
# Soal 4a
# Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
# 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
# lihat apakah ada outlier utama dalam homogenitas varians.

myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)
detach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 <- as.character(myFile$V1)
myFile$V1[myFile$V1 == "1"] <- "Kucing Oren"
myFile$V1[myFile$V1 == "2"] <- "Kucing Hitam"
myFile$V1[myFile$V1 == "3"] <- "Kucing Putih"
myFile$V1 <- as.factor(myFile$V1)
myFile <- myFile[-c(1),]
myFile

grup1 <- subset(myFile, V1=="Kucing Oren")
grup2 <- subset(myFile, V1=="Kucing Hitam")
grup3 <- subset(myFile, V1=="Kucing Putih")
grup1
grup2
grup3

