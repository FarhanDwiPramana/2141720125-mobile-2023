> **FARHAN DWI PRAMANA**
>
> 3H / 11
>
> 2141720125

---

# **Praktikum 1: Mengunduh Data dari Web Service (API)**

**Soal 1**
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

```
return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future Farhan'),
      ),
```

**Soal 2** Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel `path`

```
Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/dgyHjgEACAAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
```

<img src="doc/prak1-langkah4-soal2-b.png)">
