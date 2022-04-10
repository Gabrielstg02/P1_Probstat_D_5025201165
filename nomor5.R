#Praktikum soal nomor 5

#diketahui nilai lambda = 3

#sub soal (a)
lambda = 3
#misalkan jika bilangan random sejumlah n=10
rexp(10,rate = lambda)

#sub soal (b)
#Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
#n = 10
set.seed(1)
x1 <- rexp(10,rate = lambda)
hist(x1,
     main = "Histogram Eksponensial jika n = 10")
#n = 100
set.seed(1)
x2 <- rexp(100,rate = lambda)
hist(x2,
     ylim = c(0,50),
     xlim = c(0,2),
     main = "Histogram Eksponensial jika n = 100")
#n=1000
set.seed(1)
x3 <- rexp(1000,rate = lambda)
hist(x3,
     ylim = c(0,500),
     xlim = c(0,3),
     main = "Histogram Eksponensial jika n = 1000")
#n=10000
set.seed(1)
x4 <- rexp(10000,rate = lambda)
hist(x4,
     ylim = c(0,5000),
     xlim = c(0,4),
     main = "Histogram Eksponensial jika n = 10000")

#sub soal (c)
#Nilai rataan
#dimana n =100 dan lambda = 3
n = 100
lamd = 3
data <- rexp(n, rate = lamd)
avg <- mean(data)
avg

#nilai varian
va <- var(data)
va