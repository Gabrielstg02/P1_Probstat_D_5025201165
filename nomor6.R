#Praktikum soal nomor 6

#diketahui mean = 50 dan sd = 8 dari random nilai sebanyak 100 data
#Fungsi Probabilitas dari Distribusi Normal P
#sub soal (a)
n = 100
m = 50
std = 8

#contoh data data <- c(1,2,4,2,6,3,10,11,5,3,6,85)
data <- rnorm(100,50,8)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- round(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="red")

#sub soal (b)
#Generate Histogram dari Distribusi Normal dengan breaks 50
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201165_Gabriel Solomon Sitanggang_Probstat_D_DNhistogram")

#sub soal (c)
#nilai varian
var(x)