**FARHAN DWI PRAMANA**

**2141720125**

**3H/11**

## Praktikum 1: Dart Streams

### Soal 1

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

Jawab :

```dart
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Farhan',
```

### Soal 2

- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.

```dart
 final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.blueAccent,
    Colors.purpleAccent,
    Colors.brown,
    Colors.green,
    Colors.orange
  ];
```

### Soal 3

- Jelaskan fungsi keyword yield\* pada kode tersebut!

Jawab :

> Keyword yield* digunakan untuk mengambil nilai dari stream Stream.periodic. Dengan yield*, kita dapat menggabungkan nilai dari stream atau iterable lain ke dalamnya.

- Apa maksud isi perintah kode tersebut?

Jawab :

> Kode tersebut bertujuan membuat stream warna yang berubah setiap detik. Ini dilakukan dengan memanfaatkan Stream.periodic yang menghasilkan nilai integer setiap detik. Nilai integer tersebut digunakan sebagai indeks untuk menentukan warna yang akan dihasilkan.

### Soal 4

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

<img src="doc/prak1-jawaban-soal4.gif">

### Soal 5

- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

Jawab :

> Listen:
>
> Metode listen memiliki beberapa karakteristik kunci. Pertama, sifatnya yang asinkronus memungkinkan program untuk melanjutkan eksekusi tanpa menunggu selesainya pengiriman data ke stream. Kedua, fleksibilitas handling memungkinkan Anda menentukan fungsi handler yang akan dijalankan setiap kali terjadi perubahan pada stream. Terakhir, penggunaan listen bersifat non-blocking, memungkinkan program untuk melanjutkan eksekusi tanpa harus menunggu setiap data diambil dari stream

> Await for:
>
> Metode await for memiliki beberapa sifat kunci. Pertama, sifat sinkronusnya membuat eksekusi program menunggu hingga data tersedia di stream sebelum melanjutkan ke baris kode berikutnya. Kedua, penggunaan await for mirip dengan menggunakan iterator untuk mengonsumsi nilai dari stream satu per satu. Terakhir, penggunaan await for bersifat blocking, yang berarti program akan terhenti atau diblokir sampai data tersedia di stream atau stream ditutup.

## Praktikum 2: Stream controllers dan sinks

### Soal 6

- Jelaskan maksud kode langkah 8 dan 10 tersebut!

Jawab :

> Langkah 8: Edit initState()
> Pada langkah initState(), widget dibuat untuk pertama kalinya. Kode ini menciptakan objek NumberStream dan StreamController. StreamController berfungsi mengendalikan aliran data dari NumberStream. Selanjutnya, aliran ini didengarkan, dan setiap kali ada peristiwa baru, metode setState() dipanggil. Hal ini memastikan bahwa widget diperbarui secara otomatis setiap kali nomor terbaru diterima.

> Langkah 10: Tambah method addRandomNumber()
> Metode addRandomNumber() membuat nomor acak antara 0 dan 9 menggunakan objek Random, lalu menambahkannya ke aliran dengan metode addNumberToSink().

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
  Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".

Jawab :

<img src="doc/prak2-jawaban-soal6.gif">

### Soal 7

- Jelaskan maksud kode langkah 13 sampai 15 tersebut!

Jawab :

> Pada langkah 13, Ditambahkan metode addError() ke kelas Stream. Fungsinya adalah menambahkan error ke dalam stream.
> Pada langkah 15, mengerdit metode addRandomNumber(). Dua baris kode sebelumnya yang menambahkan nomor acak ke dalam stream telah di-komentari. Sebagai gantinya, ditambahkan kode baru untuk menyertakan error ke dalam stream.

## Praktikum 3: Injeksi data ke streams

### Soal 8

- Jelaskan maksud kode langkah 1-3 tersebut!

Jawab :

> Langkah 1
> Dalam langkah ini, kita menyertakan variabel baru dengan nama transformer di dalam class \_StreamHomePageState. Variabel ini akan digunakan untuk menyimpan objek StreamTransformer.

> Langkah 2
> Pada tahap ini, ditambahkan kode untuk membuat objek StreamTransformer di dalam class \_StreamHomePageState. Objek tersebut akan berfungsi untuk mengubah data yang diterima dari stream. Secara khusus, dalam kasus ini, data integer akan diubah menjadi hasil perkalian dengan 10.

> Langkah 3
> Dalam langkah ini, dilakukan penyuntingan pada kode di dalam metode initState(). Kode tambahan digunakan untuk memanfaatkan objek transformer guna mengubah data yang diterima dari stream.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

<img src="doc/prak3-jawaban-soal8.gif">

## Praktikum 4: Subscribe ke stream events

### Soal 9

- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!

Jawab :

> Langkah 2
> menambahkan kode untuk membuat objek NumberStream dan NumberStreamController dalam langkah ini. Objek NumberStream akan bertanggung jawab menghasilkan stream integer secara acak, sedangkan objek NumberStreamController akan digunakan untuk mengendalikan stream tersebut.

> Langkah 6
> Dalam langkah ini, ditambahkan kode untuk membatalkan subscription di dalam metode dispose(). Pembatalan subscription ini diperlukan untuk mencegah terjadinya memory leak.

> Langkah 8
> Dalam langkah ini, kode tambahan diperkenalkan untuk memeriksa apakah stream sudah ditutup sebelum menambahkan data ke dalamnya. Jika ternyata stream sudah ditutup, nilai variabel lastNumber akan diubah menjadi -1.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

<img src="doc/prak4-jawaban-soal9.gif">

## Praktikum 5: Multiple stream subscriptions

### Soal 10

- Jelaskan mengapa error itu bisa terjadi ?

Jawab :

> Kesalahan terjadi saat mencoba menambahkan atau membuat dua langganan pada stream yang sama tanpa membatalkan langganan sebelumnya. Masalah muncul pada inisialisasi langganan2 dalam metode initState() karena sudah ada inisialisasi langganan untuk menangani stream yang sama pada saat itu.

### Soal 11

- Jelaskan mengapa hal itu bisa terjadi ?

Jawab :

> Ketika tombol "New Random Number" ditekan, dua angka acak yang identik dihasilkan. Angka-angka tersebut merupakan output dari stream yang diakses oleh objek subscription dan subscription2. Stream ini menghasilkan nilai berupa event (angka acak) yang dipisahkan dengan tanda "-". Ketika tombol "Stop Stream" ditekan, langganan terhadap stream dihentikan. Ini mengakibatkan stream tidak lagi mengeluarkan output, meskipun tombol "New Random Number" tetap ditekan.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

<img src="doc/prak5-jawaban-soal11.gif">

## Praktikum 6: StreamBuilder

### Soal 12

- Jelaskan maksud kode pada langkah 3 dan 7 !

Jawab :

> Langkah 3 Terlibat dalam pembuatan kelas NumberStream(), yang mencakup metode getNumbers() untuk menghasilkan stream berisi angka-angka acak. Stream ini diperbarui setiap 1 detik.

> Langkah 7 menggunakan StreamBuilder untuk membuat antarmuka pengguna (UI) yang menampilkan nilai dari stream secara real-time. Antarmuka ini otomatis diperbarui saat terjadi perubahan dalam stream, baik nilai atau error. Pesan 'Error!' ditampilkan jika terjadi error, sementara angka acak dengan font 96 muncul jika ada data dari stream. Jika tidak ada data yang diterima, antarmuka akan menampilkan widget kosong..

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

<img src="doc/prak6-langkah8.gif">
