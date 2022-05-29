# P2_Probstat_C_5025201169

# Soal 1
![image](https://user-images.githubusercontent.com/78299006/170879111-b93c9efd-b532-4f75-9cd1-7dc49649412d.png)


## 1a
a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
diatas

```
x <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
```
```
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```
Kita perlu mendapatkan selisih dari nilai sebelum (x) dan sesudah (y)
```
selisih <- x - y
```
Kemudian kita dapat mencari standart deviasinya dengan fungsi `sd()`
```
sd_sample <- sd(selisih)
sd_sample
```

##1b
b. carilah nilai t (p-value)

Kita dapat mencari nilai t dengan menggunakan `t.test()`
```
t.test(x, y,  paired = TRUE)
```

![image](https://user-images.githubusercontent.com/78299006/170879483-97a78fb6-be3a-4274-bb49-4ca46388e33e.png)

Sehingga akan didapakan nilai t = -4.1079 dan p-value = 0.0034

##1c
c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

Pertama tama, kita perlu mencari nilai meannya. Kita bisa menggunakan fungsi t.test()
```
t.test(x, y, alternative = "less", paired = TRUE, mu = 0)
```
![image](https://user-images.githubusercontent.com/78299006/170879941-d246095b-b5ec-4970-bb6b-886b13fa12c6.png)

Karena mean yang didapatkan -21,77778 atau lebih kecil dari 0, maka dapat H0 ditolak,
karena sampel memiliki cukup bukti yang bertentangan dengan H0.

#2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan
2
library seperti referensi pada modul).

##2a
a. Apakah Anda setuju dengan klaim tersebut?

Setuju

##2b
b. Jelaskan maksud dari output yang dihasilkan!

![image](https://user-images.githubusercontent.com/78299006/170880504-493d043b-c8ef-425a-9344-d3a66b134971.png)

Pengujian ini menggunakan uji satu arah, karena yang ingin diuji atalah rata lebih besar dari 20000. Berdasarkan output
yang dihasilkan, t = 8,9744, derajat bebas = 99, dan p-value = 9.436e-15. Juga didapatkan selang kepercayaan rata rata dari samperl berkisar di antara 22852.45
dan NA, yang artinya rata rata sample akan lebih besar dari 22852. Rata rata sampel yang dihitung adalah 23500.

##2c
c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

P-value alah nilai kesalahan yang didapat dari hasil perhitungan statistik (hasil uji statistik). Sehingga, semakin kecil p-value yang dimiliki, semakin besar kemungkinan kita menolak H0 dan menerima alternative. Sehingga, pada kasus ini, semakin besar peluang kita menerima alternative, yaitu ketika rata-rata lebih besar dari 20000

#3

![image](https://user-images.githubusercontent.com/78299006/170881614-cc7f5bfd-b618-4989-acc5-fd663ed5333e.png)


##3a

A. H0 dan H1

```
H0: μ Bali =! μ Bandung
h1: μ Bali = μ Bandung

```
##3b

B. Hitung Sampel Statistik

```
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
```
Hasil:

![image](https://user-images.githubusercontent.com/78299006/170882098-5fb78aba-0bd7-4e46-bf4e-9592d5778afb.png)

## 3c
C. Lakukan Uji Statistik (df =2)

t = -1.926715

## 3d

D. Nilai Kritikal

Dengan fungsi `qt()` didapatkan nilai kritikal 2.015368

## 3e
E. Keputusan

H0 tidak ditolak, karena sample tidak memiliki bukti yang cukup yang bertentangan dengan H0

## 3f
F. Kesimpulan

nilai rata rata saham tidak ada perbedaan karena nilai t masih berada dalam interval nilai kritis



