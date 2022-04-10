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
```
> Histogram Distribusi Geometrik Peluang X Gagal Sebelum Sukses Pertama
![Rplot](https://user-images.githubusercontent.com/72547769/162623727-90ae8759-3cde-4091-a8c6-b69921f706ec.png)

```
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
```



Nomor 2
![Rplot01](https://user-images.githubusercontent.com/72547769/162623795-202b13cb-1b1b-4fa9-a363-98b0522e2408.png)


Nomor 3
![Rplot02](https://user-images.githubusercontent.com/72547769/162623816-242adb33-87c7-4b54-94e4-677eb73908f9.png)


Nomor 4
![Rplot03](https://user-images.githubusercontent.com/72547769/162623885-eb08101b-38b2-455f-b0aa-49e97e92a977.png)

Nomor 5

![Rplot04](https://user-images.githubusercontent.com/72547769/162623901-a85acad4-f179-446c-aff9-26e10098ba6f.png)

![Rplot05](https://user-images.githubusercontent.com/72547769/162623920-f62b450e-a88a-459a-8cb6-1984b861d79b.png)

![Rplot06](https://user-images.githubusercontent.com/72547769/162623936-acffca05-cdbf-4ce4-beab-069398b36071.png)

![Rplot07](https://user-images.githubusercontent.com/72547769/162623942-7531194e-712a-4c94-a5b4-e7dc87590f74.png)

Nomor 6
![Rplot08](https://user-images.githubusercontent.com/72547769/162623953-bb216f8d-89b4-4e3e-af49-d335b8d9d18d.png)

![Rplot09](https://user-images.githubusercontent.com/72547769/162623964-69ee14b0-37e7-4a07-b6df-339866d943ab.png)
