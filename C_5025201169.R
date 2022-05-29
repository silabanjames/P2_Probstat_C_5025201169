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

df =2
sp <- (((27 - 1)*(1.32)^2) + ((19 - 1)*(1.67)^2))/(27 + 19 - df)
sp <- sqrt(sp)
x2 <- (1/27) + (1/19)
x <- sqrt(x2)
t <- (2.79 - 3.64)/(sp*x)
t

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

my_data  <- read.delim(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
my_data

#install packages ("ggpubr")
library(ggpubr)
ggboxplot(my_data, x = "Group", y = "Length",
          color = "Group", palette = c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c("1", "2", "3"),
          ylab = "Length", xlab = "Group")

