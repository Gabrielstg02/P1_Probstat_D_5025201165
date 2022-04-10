#Praktikum soal nomor 4

#diketahui nilai x = 2
#nilai v = 10


#sub soal (a)
#Fungsi probabilitas dari Distribusi Chi-Square
x = 2
df = 10
dchisq(x , df)
#didapatkan hasil 0.007664155

#sub soal (b)
#Histogramari dari Distribusi Chi-Square menggunakan 100 data sembarang
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram dari Distribusi Chisquare")

#sub soal (c)
#Nilai rataan
mean1 = df
mean1

#varian
var1 = 2*df
var1