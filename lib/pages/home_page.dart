import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Gula 1 Kg',
        price: 15000,
        imageUrl: 'images/gula.jpg',
        stock: 20,
        rating: 4.5,
      ),
      Item(
        name: 'Garam 500g',
        price: 5000,
        imageUrl: 'images/garam.jpg',
        stock: 50,
        rating: 4.7,
      ),
      Item(
        name: 'Beras 5 Kg',
        price: 75000,
        imageUrl: 'images/beras.jpg',
        stock: 15,
        rating: 4.9,
      ),
      Item(
        name: 'Kecap 600ml',
        price: 12000,
        imageUrl: 'images/kecap.jpg',
        stock: 30,
        rating: 4.8,
      ),
      Item(
        name: 'Kopi 200g',
        price: 18000,
        imageUrl: 'images/kopi.jpg',
        stock: 25,
        rating: 4.6,
      ),
      Item(
        name: 'Teh 100g',
        price: 8000,
        imageUrl: 'images/teh.jpg',
        stock: 40,
        rating: 4.5,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Sembako', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Tiga item per baris
                childAspectRatio: 0.6, // Ubah aspek rasio untuk memperkecil kartu
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemWidget(
                  item: item
                  // onTap: () {
                  //   // Menggunakan context.push dari GoRouter untuk navigasi ke halaman item dengan mengirimkan item sebagai extra
                  //   context.push('/item', extra: item);
                  // },
                );
              }
            ),
          ),
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
    );
  }
}