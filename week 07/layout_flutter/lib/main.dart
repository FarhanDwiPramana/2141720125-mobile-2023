import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Column _buildButtonColumn(IconData icon, Color color, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("99"),
        ],
      ),
    );

    Widget buttonSection = Container(
      padding: const EdgeInsets.only(top: 110),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Icons.home_rounded, Colors.blue, 'HOME'),
          _buildButtonColumn(Icons.near_me, Colors.blue, 'ROUTE'),
          _buildButtonColumn(Icons.share, Colors.blue, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Sebuah obyek wisata nongkrong sambil ngopi yang terletak di Jalan Sultan Agung Nomor, Kelurahan Sisir, Kecamatan Batu, Kota Batu.'
        'Wisata dengan vibes suasana romantis ini kian digemari oleh kalangan muda termasuk yang sedang dimabuk cinta.Dinamakan Bukit Bintang,'
        'karena pengunjung yang datang ke tempat ini serasa melihat taburan bintang yang gemerlapan tanpa harus mendongakkan kepala ke atas langit.'
        'Ribuan lampu yang menyala dari pusat Kota Batu, bak taburan bintang yang memanjakan mata'
        'Pengunjung pun tak perlu bingung bila ingin mencari camilan atau minuman karena banyaknya pedagang yang berjualan di tepi jalan.'
        'Farhan Dwi Pramana / 2141720125',
        maxLines: 10,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Farhan Dwi Pramana / 2141720125',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bukit Bintang'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/bukit-bintang.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
            buttonSection,
          ],
        ),
      ),
    );
  }
}
