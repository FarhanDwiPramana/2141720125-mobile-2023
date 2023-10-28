import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    final double aspectRatio = 1.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'productImage${itemArgs.name}',
                    child: AspectRatio(
                      aspectRatio: aspectRatio,
                      child: Image.asset(
                        itemArgs.img ?? "",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${itemArgs.name}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          Text(
                            itemArgs.rating.toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp. ${itemArgs.price}',
                        style: const TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Stok: ${itemArgs.stok}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                    'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer'
                    'took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,'
                    'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s'
                    'with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing'
                    'software like Aldus PageMaker including versions of Lorem Ipsum.',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
