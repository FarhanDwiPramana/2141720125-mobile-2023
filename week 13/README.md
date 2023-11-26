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

