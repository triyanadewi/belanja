import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                color: Colors.white,
                child: Hero(
                  tag: item.name,
                  child: Image.asset(item.imageUrl, fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              item.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Stok: ${item.stock} barang',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  '\Rp${item.price}',
                  style: const TextStyle(fontSize: 18, color: Colors.green),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow),
                    Text('${item.rating} (30 reviews)'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Produk berkualitas tinggi, cocok untuk kebutuhan harian.',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Row(
              children: [
                const Text('Quantity'),
                const SizedBox(width: 8),
                DropdownButton<int>(
                  value: 1,
                  items: const [
                    DropdownMenuItem(value: 1, child: Text('1')),
                    DropdownMenuItem(value: 2, child: Text('2')),
                    DropdownMenuItem(value: 3, child: Text('3')),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text('Add to Cart'),
            ),
            const SizedBox(height: 16),
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(16.0),
              child: const Center(
                child: Text(
                  'Triyana Dewi Fatmawati - 2241720206',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
