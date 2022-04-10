#Praktikum soal nomor 1

#sub soal (a)
#pada sub soal (a) kita menggunakan x(jumlah orang yang bertemu penyurvei) = 3
p = 0.20
n = 3
dgeom(x = n, prob = p)

#sub soal (b)
mean(rgeom(n = 10000, prob = p) == 3)

#sub soal (c)
#kesimpulan yang telah kita dapatkan dari sub soal (a) dan (b) adalah
#(a) didapatkan nilai exactnya yang bernilai 0.1024
#(b) didapatkan nilai dari percobaan yang menggunakan 10000 data sembarang
#dari perhitungan didapat hasil perhitungan yang berbeda, namun hasilnya mendekati nilai exact

#sub soal (d)
#pada sub soal (d) kita membuat histogram distibusi geometrik
#Yaitu histogram Peluang X = 3 gagal Sebelum Sukses Pertama
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


#sub soal (e)
p=0.2

#Nilai Rataan (mean)
#didapat dengan cara membagi 1 dengan p (0.2)
mean1 = 1 / p
mean1

#Nilai Varian
#didapat dengan cara mengurangkan 1 dengan p (0.2) dan kemudian dibagi dengan pangkat dua dari p ((0.2)^2)
var1 = (1 - p) / p^2
var1