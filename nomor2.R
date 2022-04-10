#Praktikum soal nomor 2

#Diketahui disoal bahwa total pasien (n) adalah 20
#peluang sembuh (p) = 0.2

#sub soal (a)
#Perhitungan peluang dimana 4 pasien sembuh
a <- dbinom(x=4,20,0.2)
a
#hasil peluang nya adalah 0.2181994

#sub soal (b)
#Grafik histogram kasus
data <- rbinom(20,20,0.2)
hist(data,
     xlim = c(0,8))

#sub soal (c)

#jumlah pasien
n=20
#peluang sembuh
p=0.2
#peluang tidak sembuh nya
q=1-p

#nilai rataan theorytical
me=n*p
me

#nilai rataan sampel
mean(data)

#varian theorytical
va=n*p*q
va

#varian sampel
var(data)