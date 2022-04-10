# P1_Probstat_D_5025201165

Nomor 1


#sub soal (a)
```
#pada sub soal (a) kita menggunakan x(jumlah orang yang bertemu penyurvei) = 3
p = 0.20
n = 3
dgeom(x = n, prob = p)
```
> Pada potongan code di atas befungsi untuk menghitung peluang penyurvei bertemu 3 orang yang tidak menghadiri acara vaksinasi
> `dgeom(x,pron)` merupakan probabilitas `x` kegagalan sebelum kegagalan sebelum kesusksesan ketika probabilitas kesuksesan adalah `prob`

#sub soal (b)
```
mean(rgeom(n = 10000, prob = p) == 3)
```
>`rgeom(x, prob)` adalah jumlah kegagalan ketika probabilitas kesuksesan adalah `prob` dengan `x` percobaan.


#sub soal (c)
```
#kesimpulan yang telah kita dapatkan dari sub soal (a) dan (b) adalah
#(a) didapatkan nilai exactnya yang bernilai 0.1024
#(b) didapatkan nilai dari percobaan yang menggunakan 10000 data sembarang
#dari perhitungan didapat hasil perhitungan yang berbeda, namun hasilnya mendekati nilai exact
```
#sub soal (d)
```
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Histogram Distribusi Geometrik, Peluang X =3 Gagal Sebelum Sukses Pertama",
       subtitle = "Geometric(.2)",
       x = "Gagal Sebelum Sukses Pertama (x)",
       y = "Peluang")
```
> pada sub soal (d) kita membuat histogram distibusi geometrik
> Yaitu histogram Peluang X = 3 gagal Sebelum Sukses Pertama


> Histogram Distribusi Geometrik Peluang X Gagal Sebelum Sukses Pertama
![Rplot](https://user-images.githubusercontent.com/72547769/162623727-90ae8759-3cde-4091-a8c6-b69921f706ec.png)


#sub soal (e)
```
p=0.2

#Nilai Rataan (mean)
mean1 = 1 / p
mean1
```
>didapat dengan rumus `mean1` yaitu membagi 1 dengan p (0.2)

```
#Nilai Varian
var1 = (1 - p) / p^2
var1
```
>didapat dengan rumus `var1` yaitu mengurangkan 1 dengan p (0.2) dan kemudian dibagi dengan pangkat dua dari p ((0.2)^2)



Nomor 2

```
Diketahui disoal bahwa total pasien (n) adalah 20
peluang sembuh (p) = 0.2
```
#sub soal (a)
```
a <- dbinom(x=4,20,0.2)
a
```
>Perhitungan peluang dimana 4 pasien sembuh
>`dbinom` digunakan untuk menghitung `peluang` dan hasil `peluang`  adalah 0.2181994


#sub soal (b)
```
#Grafik histogram kasus
data <- rbinom(20,20,0.2)
hist(data,
     xlim = c(0,8))

```
> Histogram Distribusi Binomial Selama 20 Percobaan
![Rplot01](https://user-images.githubusercontent.com/72547769/162623795-202b13cb-1b1b-4fa9-a363-98b0522e2408.png)

#sub soal (c)
```
#jumlah pasien
n=20
#peluang sembuh
p=0.2
#peluang tidak sembuh nya
q=1-p
```
>jumlah pasien = 20, peluang sembuh = 0.2, peluang tidak sembuh = 1 - peluang tidak sembuh
```
#nilai rataan theorytical
me=n*p
me
```
>`nilai rataan theorytical` dapat dihitung menggunakan rumus `me` dengan cara mengalikan `n` jumlah pasien dengan `p` peluang sembuh
```
#nilai rataan sampel
mean(data)
```
>`nilai rataan sampel` dapat dihitung dengan `mean(data)`
```
#varian theorytical
va=n*p*q
va
```
>`varian theorytical` dapat dihitung menggunakan rumus `va` dengan cara mengalikan `n` jumlah pasien dengan `p` peluang sembuh dan `q` peluang tidak sembuh
```
#varian sampel
var(data)
```
>`varian sampel` dapat dihitungdengan `var(data)`

Nomor 3

#sub soal (a)
```
#diketahui banyak bayi yang akan lahir (x) = 6
#diketahui rata-rata historis rata rata bayi lahir setiap hari (lambda) = 4.5
x = 6
lambda = 4.5
dpois(x,lambda)
```
>pada soal diketahui banyaknya bayi yang akan lahir adalah 6
>dan rata-rata historis rata rata bayi lahir setiap hari `lambda` sebesar 4.5
>`dpois(x,lambda)` menghitung berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok

#sub soal (b)
```
#Gambar histogram data dimana
#6 bayi lahir selama setahun (n = 365)
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Banyaknya bayi lahir per periode',
       y = 'Proporsi',
       title = 'Simulasi dan Histogram kelahiran 6 bayi akan lahir di rumah sakut selama setahun') +
  theme_bw()
```
>Histogram Distribusi Poisson Kemungkinan Banyak Bayi Lahir Tahun ini
![Rplot02](https://user-images.githubusercontent.com/72547769/162623816-242adb33-87c7-4b54-94e4-677eb73908f9.png)
```
#sub soal (c)
babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())
#dari perhitungan di atas dapat ditentukan bahwa hasil simulasi nya sekitar 11.5%
#kemudian kita dapat perhitungan nilai exact yang menunjukkan hasil sebesar 12.8%
#kita dapat menyimpulkan bahwa nilai dari simulasi tidak jauh dari nilai exactnya
```
#sub soal (d)
```
#Nilai rataan
lambda
```
>`lambda` merupakan nilai rataan
```
#varian
lambda
```
>`lambda` merupakan varian

Nomor 4


#sub soal (a)
```
#Fungsi probabilitas dari Distribusi Chi-Square
#diketahui nilai x = 2
#nilai v = 10
x = 2
df = 10
dchisq(x , df)
#didapatkan hasil 0.007664155
```
>`x` dan `v` diketahui nilai nya yaitu masing-masing 2 dan 10
>`dchisq(vec, df)` adalah fungsi untuk menghitung kepadatan chi square suatu vektor elemen.

#sub soal (b)
```
#Histogramari dari Distribusi Chi-Square menggunakan 100 data sembarang
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram dari Distribusi Chisquare")
```
>Histogram dari Distribusi Chi-Square dengan 100 Data Random
![Rplot03](https://user-images.githubusercontent.com/72547769/162623885-eb08101b-38b2-455f-b0aa-49e97e92a977.png)

#sub soal (c)
```
#Nilai rataan
mean1 = df
mean1
```
>nilai rataan dapat dihitung dengan `mean1`
```
#varian
var1 = 2*df
var1
```
>nilai varian dapat dihitung dengan `var1`


Nomor 5
```
#sub soal (a)
#diketahui nilai lambda = 3

lambda = 3
#misalkan jika bilangan random sejumlah n=10
rexp(10,rate = lambda)
```
>`lambda` bernilai 3
>`rexp` adalah fungsi yang digunakan untuk mensimulasikan sekumpulan bilangan acak yang diambil dari distribusi eksponensial.

#sub soal (b)
```
#Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
#n = 10
set.seed(1)
x1 <- rexp(10,rate = lambda)
hist(x1,
     main = "Histogram Eksponensial jika n = 10")
```
>Histogram dari Distribusi Exponensial untuk n = 10
![Rplot04](https://user-images.githubusercontent.com/72547769/162623901-a85acad4-f179-446c-aff9-26e10098ba6f.png)
```
#n = 100
set.seed(1)
x2 <- rexp(100,rate = lambda)
hist(x2,
     ylim = c(0,50),
     xlim = c(0,2),
     main = "Histogram Eksponensial jika n = 100")
```
>Histogram dari Distribusi Exponensial untuk n = 100
![Rplot05](https://user-images.githubusercontent.com/72547769/162623920-f62b450e-a88a-459a-8cb6-1984b861d79b.png)
```
#n=1000
set.seed(1)
x3 <- rexp(1000,rate = lambda)
hist(x3,
     ylim = c(0,500),
     xlim = c(0,3),
     main = "Histogram Eksponensial jika n = 1000")
```
>Histogram dari Distribusi Exponensial untuk n = 1000
![Rplot06](https://user-images.githubusercontent.com/72547769/162623936-acffca05-cdbf-4ce4-beab-069398b36071.png)
```
#n=10000
set.seed(1)
x4 <- rexp(10000,rate = lambda)
hist(x4,
     ylim = c(0,5000),
     xlim = c(0,4),
     main = "Histogram Eksponensial jika n = 10000")
```
>Histogram dari Distribusi Exponensial untuk n = 10000
![Rplot07](https://user-images.githubusercontent.com/72547769/162623942-7531194e-712a-4c94-a5b4-e7dc87590f74.png)


#sub soal (c)
```
#Nilai rataan
#dimana n =100 dan lambda = 3
n = 100
lamd = 3
data <- rexp(n, rate = lamd)
avg <- mean(data)
avg
```
>nilai rataan dapat dihitung dengan `avg`
```
#nilai varian
va <- var(data)
va
```
>nilai varian dapat dihitung dengan `va`

Nomor 6
```
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
```
>rumus z score `z = (x-μ)/σ`, di mana `x` adalah skor mentah, `μ` adalah rata-rata populasi, dan `σ` adalah standar deviasi populasi.

>Grafik Z-Score Data
![Rplot08](https://user-images.githubusercontent.com/72547769/162623953-bb216f8d-89b4-4e3e-af49-d335b8d9d18d.png)

#sub soal (b)
```
#Generate Histogram dari Distribusi Normal dengan breaks 50
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201165_Gabriel Solomon Sitanggang_Probstat_D_DNhistogram")
```
>Histogram Distribusi Normal
![Rplot09](https://user-images.githubusercontent.com/72547769/162623964-69ee14b0-37e7-4a07-b6df-339866d943ab.png)

#sub soal (c)
```
#nilai varian
var(x)
```
>nilai varian dapat dihitung dengan `var(x)`
