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
