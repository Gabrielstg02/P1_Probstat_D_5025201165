#Praktikum soal nomor 3

#sub soal (a)
#diketahui banyak bayi yang akan lahir (x) = 6
#diketahui rata-rata historis rata rata bayi lahir setiap hari (lambda) = 4.5
x = 6
lambda = 4.5
dpois(x,lambda)

#sub soal (b)
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

#sub soal (c)
babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())
#dari perhitungan di atas dapat ditentukan bahwa hasil simulasi nya sekitar 11.5%
#kemudian kita dapat perhitungan nilai exact yang menunjukkan hasil sebesar 12.8%
#kita dapat menyimpulkan bahwa nilai dari simulasi tidak jauh dari nilai exactnya

#sub soal (d)
#Nilai rataan
lambda

#varian
lambda