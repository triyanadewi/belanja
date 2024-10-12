# belanja

A new Flutter project.

## Identitas Mahasiswa

> Nama  : Triyana Dewi Fatmawati <br/>
> NIM   : 2241720206 <br/>
> Kelas : TI - 3H <br/>
> Nomor : 25 <br/>

## Getting Started

## Praktikum 5: Membangun Navigasi di Flutter
> **Apa yang akan Anda pelajari**
> - Cara kerja mekanisme navigation dan route di Flutter.
> - Cara membuat navigation dan route di Flutter.
> <br>
<br>

#### Langkah - langkah yang dilakukan: <br>
Langkah 1: Siapkan project baru <br>
Langkah 2: Mendefinisikan Route <br>
Langkah 3: Lengkapi Kode di main.dart <br>
Langkah 4: Membuat data model <br>
Langkah 5: Lengkapi kode di class HomePage <br>
Langkah 6: Membuat ListView dan itemBuilder <br>
Langkah 7: Menambahkan aksi pada ListView <br>

#### Kode Program Langkah 1 - 6: <br>
- lib/main.dart <br>
![Hasil Praktikum 4 Langkah 1 - 6](/images/p4_main.png)

- lib/models/item.dart <br>
![Hasil Praktikum 4 Langkah 1 - 6](/images/p4_item.png)

- lib/pages/home_page.dart <br>
![Hasil Praktikum 4 Langkah 1 - 6](/images/p4_homepage.png)

- lib/pages/item_page.dart <br>
![Hasil Praktikum 4 Langkah 1 - 6](/images/p4_itempage.png)

#### Hasil Praktikum Langkah 1 - 6:
![Hasil Praktikum 4 Langkah 1 - 6](/images/hasil_p4A.png)

#### Kode Program Langkah 7:
- lib/pages/home_page.dart <br>
![Hasil Praktikum 4 Langkah 1 - 6](/images/p4_homepage_2.png)

#### Hasil Praktikum Langkah 1 - 7: <br>
![Hasil Praktikum 4 Langkah 1 - 6](/images/hasil_p4A_2.png)<br>
Hasil dari praktikum ini: ListView dapat diklik dan berpindah ke halaman berikutnya seperti pada gambar di atas.



## Tugas Praktikum 2
#### 1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.
```dart
Navigator.pushNamed(context, '/item', arguments: item);
```

#### 2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)
```dart
final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
```

> **Pengerjaan Soal 1 dan 2**

**Kode Program:** <br>

- lib/models/item.dart <br>
![Soal1&2 item.dart](/images/s1_item.png)

- lib/pages/home_page.dart <br>
![Soal1&2 home_page.dart](/images/s1_homepage.png)

- lib/pages/item_page.dart <br>
![Soal1&2 item_page.dart](/images/s1_2_itempage.png)
<br>

**Hasil Running:** <br>

![Hasil Soal 1 dan 2](/images/soal1_2.gif)<br>



#### 3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

#### 4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

#### 5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

> **Pengerjaan Soal 3 - 5**

**Kode Program:** <br>

- pubspec.yaml <br>
![Soal3-5 pubspec.yaml](/images/s3_5_yaml.png)

- lib/models/item.dart <br>
![Soal3-5 item.dart](/images/s3_5_item.png)

- lib/pages/home_page.dart <br>
![Soal3-5 home_page.dart](/images/s3_5_homepage.png)

- lib/pages/item_page.dart <br>
![Soal3-5 item_page.dart](/images/s3_5_itempage.png)
<br>

**Hasil Running:**

![Hasil Soal 3 - 5](/images/soal3_5.gif)<br>

##### 6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!
> **Pengerjaan Soal 6** <br>

**Kode Program:** <br>

- pubspec.yaml <br>
![Soal6 pubspec.yaml](/images/s6_yaml.png)

- lib/main.dart <br>
![Soal6 main.dart](/images/s6_main.png)

- lib/models/item.dart <br>
![Soal6 item.dart](/images/s6_item.png)

- lib/pages/home_page.dart <br>
![Soal6 home_page.dart](/images/s6_homepage.png)

- lib/pages/item_page.dart <br>
![Soal6 item_page.dart](/images/s6_itempage.png)

- lib/widgets/item_widget.dart <br>
![Soal6 item_widget.dart](/images/s6_itemwidget.png)
<br>

**Hasil Running:**

![Hasil Soal 6](/images/soal6.gif)<br>