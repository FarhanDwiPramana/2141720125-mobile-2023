import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // @override
  // final List<Item> items = [
  //   Item(name: 'Nike Black and Yellow', price: 1256000, img:'../assets/1.jpg', stok: 120, rating: 4.8),
  //   Item(name: 'Nike Blue and White ', price: 870000, img:'../assets/2.jpg', stok: 46, rating: 4.5),
  //   Item(name: 'Nike Red and White', price: 590000, img:'../assets/3.jpg', stok: 13, rating: 4.2),
  //   Item(name: 'New Balance Green and White', price: 700000, img:'../assets/4.jpg', stok: 39, rating: 4.7),
  //   Item(name: 'Rainbow Shoes', price: 299000, img:'../assets/5.jpg', stok: 28, rating: 3.4),
  //   Item(name: 'Pinky Girl', price: 249000, img:'../assets/6.jpg', stok: 23, rating: 3.8),
  //   Item(name: 'Ventela Red and White', price: 399000, img:'../assets/7.jpg', stok: 34, rating: 5.0),
  //   Item(name: 'Nike Full White', price: 499000, img:'../assets/8.jpg', stok: 150, rating: 4.0),
  // ];

  //  Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Shopping List'),
  //     ),
  //     body: Column(
  //       children: [
  //         Expanded(
  //           child: GridView.builder(
  //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //               crossAxisCount: 2,
  //               childAspectRatio: 0.85,
  //             ),
  //             itemCount: items.length,
  //             itemBuilder: (context, index) {
  //               final item = items[index];
  //               return InkWell(
  //                 onTap: () {
  //                   Navigator.pushNamed(context, '/item', arguments: item);
  //                 },
  //                 child: Card(
  //                   child: Padding(
  //                     padding: const EdgeInsets.all(8),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Hero(
  //                           tag: 'productImage${item.name}',
  //                           child: AspectRatio(
  //                             aspectRatio: 1,
  //                             child: Image.asset(item.img ?? "", fit: BoxFit.cover),
  //                           ),
  //                         ),
  //                         Expanded(
  //                           child: Column(
  //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                             children: [
  //                               Padding(
  //                                 padding: const EdgeInsets.only(top: 8),
  //                                 child: Text(
  //                                   item.name ?? "",
  //                                   style: const TextStyle(
  //                                     fontWeight: FontWeight.bold,
  //                                     fontSize: 16,
  //                                   ),
  //                                 ),
  //                               ),
  //                               Row(
  //                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                                 children: [
  //                                   Row(
  //                                     children: [
  //                                       const Icon(Icons.star, color: Colors.orange),
  //                                       Text(
  //                                         item.rating.toString(),
  //                                         style: const TextStyle(
  //                                           color: Colors.orange,
  //                                           fontSize: 14,
  //                                         ),
  //                                       ),
  //                                     ],
  //                                   ),
  //                                   Text(
  //                                     'Rp. ${item.price}',
  //                                     style: const TextStyle(
  //                                       color: Colors.red,
  //                                       fontSize: 14,
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                               Text(
  //                                 'Terjual: ${item.stok}',
  //                                 style: const TextStyle(
  //                                   color: Colors.grey,
  //                                   fontSize: 14,
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               );
  //             },
  //           ),
  //         ),
  //         Container(
  //           padding: const EdgeInsets.all(16),
  //           color: Colors.blue, // Ganti warna background sesuai keinginan
  //           child: Align(
  //             alignment: Alignment.center,
  //             child: Text(
  //               'Farhan Dwi Pramana / 2141720125',
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //background
            Container(
              color: const Color.fromRGBO(0, 198, 232, 1),
              child: const Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.keyboard_backspace,N
                        color: Colors.white,
                      ),
                      Text(
                        "Scan Result",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //white box
            Column(
              children: [
                const SizedBox(
                  height: 110,
                ),
                MediaQuery(
                  data: mediaQueryData,
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 200,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
