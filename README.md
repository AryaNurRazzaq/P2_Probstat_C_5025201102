# P2_Probstat_C_5025201102
## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

<img width="318" alt="Screen Shot 2022-05-29 at 20 16 17" src="https://user-images.githubusercontent.com/103361498/170870713-4d5cd681-5bc0-4536-88ad-457a1fc85b2e.png">
Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

### 1.a
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
> dengan responden sejumlah 9 dan nilai x = (78,75,67,77,70,72,78,74,77) dan y = 00,95,70,90,90,90,89,90,100 maka nilai standar deviasi dapat dicari dengan cara
``` sh
deviasi = sd(x-y)

deviasi
```
> diperoleh hasil  6.359595
> 
### 1.b 
carilah nilai t (p-value)
> nilai t (p-value) dapat dicar dengan cara menggunakan `t.test()`
``` sh
t.test(x,y,alternative = "greater",var.equal = FALSE)
```

<img width="412" alt="Screen Shot 2022-05-29 at 23 39 43" src="https://user-images.githubusercontent.com/103361498/170881291-ad46590b-9215-4127-a21f-c28871569481.png">

### 1.c
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul)

### 2.a
Apakah Anda setuju dengan klaim tersebut?
> setuju

### 2.b
Jelaskan maksud dari output yang dihasilkan

<img width="383" alt="Screen Shot 2022-05-29 at 21 34 02" src="https://user-images.githubusercontent.com/103361498/170874782-d08bba28-c984-496d-b7b4-be37807f1b56.png">

> H0: μ = 20000
> H1: μ > 20000

### 2.c
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
> menggunakan rumus z dengan mean =23500 sd=3900 dan n=100 maka didapatkan hasilnya sebesar 8,97 dan didapat nilai p-value adalah maka rata-rata mobil dikemudikan lebih dari 20.000 kilometer per tahun.

## Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

<img width="620" alt="Screen Shot 2022-05-29 at 21 38 23" src="https://user-images.githubusercontent.com/103361498/170875052-00013b29-d65a-4cd0-8d77-710cffa46127.png">

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

### 3.a
H0 dan H1
> <img width="225" alt="Screen Shot 2022-05-29 at 18 28 08" src="https://user-images.githubusercontent.com/103361498/170876358-7f9c0c5c-0974-47df-9008-6d493b47fc32.png">

> <img width="215" alt="Screen Shot 2022-05-29 at 18 28 10" src="https://user-images.githubusercontent.com/103361498/170876376-ea4d8506-239b-4ba7-a824-9fe35a9667cb.png">

### 3.b
Hitung Sampel Statistik
> Sampel statistik dapat dihitung dengan menggunakan `tsum.test()`
``` sh
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```
> <img width="414" alt="Screen Shot 2022-05-29 at 22 08 23" src="https://user-images.githubusercontent.com/103361498/170876581-2f7c3635-45e4-4587-b0f2-b80c6adb3ce2.png">
 
### 3.c 
Lakukan Uji Statistik (df =2)
> Uji statistik dapat dilakukan dengan menginstall terlebih dahulu package mosaic kemudian menggunakan fungsi `plotDist()`
``` sh
plotDist(dist='t', df=2, col="red")
```

### 3.d
Nilai Kritikal
> menggunakan fungsi `qchisq()` didapatkan hasilnya 5.991465
``` sh
qchisq(p = 0.05, df = 2, lower.tail = FALSE)
```

### 3.e
Keputusan
> adalah teori pengambilan keputusan di bawah ketidakpastian.

### 3.f
Kesimpulan
> Tidak ada perbedaan rata-rata yang signifikan setelah dilakukan uji statistik

## Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing.
Jika :
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama

## Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100 ̊C, 125 ̊C dan 150 ̊C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen

### 5.a
Buatlah plot sederhana untuk visualisasi data
> Pertama kita baca dulu data yang terdapat didalam drive menggunakan fungsi `read.csv()`
``` sh
Data_no5 = read.csv('https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download')
```
> Kemudian gunakan fungsi `qplot()` untuk mencari plotnya
```sh
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)
```
<img width="664" alt="Screen Shot 2022-05-29 at 22 46 13" src="https://user-images.githubusercontent.com/103361498/170878594-68682b36-cdb8-4e9c-a4a2-e716d0ba67bb.png">

### 5.b
Lakukan uji ANOVA dua arah
> Membuat variable afactor untuk ANOVA
``` sh
Data_no5$Glass = as.factor(Data_no5$Glass)
Data_no5$Temp_Factor = as.factor(Data_no5$Temp)
str(Data_no5)

anova <- aov(Light ~ Glass*Temp_Factor, data = Data_no5)
summary(anova)
```

<img width="351" alt="Screen Shot 2022-05-29 at 23 41 02" src="https://user-images.githubusercontent.com/103361498/170881359-f9e19f70-14be-4ac5-a59b-08b7b094bc0c.png">


### 5.c
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
> Gunakan fungsi `group_by` kemudian dilanjutkan menggunakan `summarise`
``` sh
Summary = group_by(GTL, Glass, Temp) %>%
summarise(mean=mean(Light), sd=sd(Light)) %>%
arrange(desc(mean))
print(Summary)
```

### 5.d
Lakukan uji Tukey
> Menggunakan fungsi `TukeyHSD()`
``` sh
Tukey <- TukeyHSD(anova)
print(tukey)
```

### 5.e
Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
> Menggunakan fungsi `multcompLetters4()`
``` sh
Tukey.cld <- multcompLetters4(anova, Tukey)
print(Tukey.cld)
```
<img width="378" alt="Screen Shot 2022-05-29 at 23 31 50" src="https://user-images.githubusercontent.com/103361498/170880911-2c65f917-dcc3-4e68-871a-173fd6bd3a3b.png">

> Tambahkan compact letter kedalam tabel
``` sh
cld = as.data.frame.list(Tukey.cld$`Glass:Temp_Factor`)
Summary$Tukey = cld$Letters
print(Summary)
```
<img width="256" alt="Screen Shot 2022-05-29 at 23 32 20" src="https://user-images.githubusercontent.com/103361498/170880991-6b91d88d-9481-4a04-bfda-6be376bcbb66.png">


