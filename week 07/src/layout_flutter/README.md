### LAYOUT DAN NAVIGATION

## Praktikum 1: Membangun Layout di Flutter

<b>Tampilan akhir yang akan Anda buat</b>

![Alt text](assets/prak1.png)

## <b>Langkah 1: Buat Project Baru</b>

Buatlah sebuah project flutter baru dengan nama l<b>layout_flutter</b>. Atau sesuaikan style laporan praktikum yang Anda buat.

## <b>Langkah 2: Buka file lib/main.dart</b>

Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.

![Alt text](assets/prak1-langkah2.png)

Hasil :

![Alt text](assets/prak2-langkah2-hasil.png)

## <b>Langkah 3: Identifikasi layout diagram</b>

Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

    > Identifikasi baris dan kolom.
    > Apakah tata letaknya menyertakan kisi-kisi (grid)?
    > Apakah ada elemen yang tumpang tindih?
    > Apakah UI memerlukan tab?
    > Perhatikan area yang memerlukan alignment, padding, atau borders.

Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.

![Alt text](assets/prak1-langkah3-a.png)

Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.

![Alt text](assets/prak1-langkah3-b.png)

Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.

![Alt text](assets/prak1-langkah3-c.png)

Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.

## <b>Langkah 4: Implementasi title row</b>

Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:

![Alt text](assets/prak1-langkah4-a.png)

<b>/_ soal 1 _/</b> Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

![Alt text](assets/jawaban_soal1_prak1.png)

<b>/_ soal 2 _/</b> Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

![Alt text](assets/jawaban_soal2_prak1.png)

<b>/_ soal 3 _/</b> Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

![Alt text](assets/jawaban_soal3_prak1.png)

![Alt text](assets/prak1-langkah4-b.png)

HASIL PRAKTIKUM

![Alt text](assets/hasil_prak1.png)

## Praktikum 2: Implementasi button row

## <b>Langkah 1: Buat method Column \_buildButtonColumn</b>

Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

<b>lib/main.dart (\_buildButtonColumn)</b>

![Alt text](assets/prak2-langkah1.png)

## <b>Langkah 2: Buat widget buttonSection</b>

Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():

<b>lib/main.dart (buttonSection)</b>

![Alt text](assets/prak2-langkah2.png)

HASIL PRAKTIKUM

![Alt text](assets/hasil_prak2.png)

## <b>Langkah 3: Tambah button section ke body</b>

Tambahkan variabel buttonSection ke dalam body seperti berikut:

![Alt text](assets/prak2-langkah3.png)

## Praktikum 3: Implementasi text section

## <b>Langkah 1: Buat widget textSection</b>

Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

![Alt text](assets/prak3-langkah1.png)

Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.

## <b>Langkah 2: Tambahkan variabel text section ke body</b>

Tambahkan widget variabel textSection ke dalam body seperti berikut:

![Alt text](assets/prak3-langkah2.png)

HASIL PRAKTIKUM

![Alt text](assets/hasil_prak3.png)

## Praktikum 4: Implementasi image section

## <b>Langkah 1: Siapkan aset gambar</b>

Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut:

![Alt text](assets/prak4-langkah1.png)

\*\* Contoh nama file gambar di atas adalah lake.jpg

## <b>Langkah 2: Tambahkan gambar ke body</b>

Tambahkan aset gambar ke dalam body seperti berikut:

![Alt text](assets/prak4-langkah2.png)

BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.

## <b>Langkah 3: Terakhir, ubah menjadi ListView</b>

Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

![Alt text](assets/prak4-langkah3.png)

HASIL PRAKTIKUM 

![Alt text](assets/hasil_prak4.png)