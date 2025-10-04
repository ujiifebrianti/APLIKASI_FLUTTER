import 'package:flutter/material.dart';
import 'produk_page.dart';
import 'produk_form.dart';

class ProdukList extends StatelessWidget {
  const ProdukList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> produkList = [
      {"kode": "A001", "nama": "Kulkas", "harga": 2500000},
      {"kode": "A002", "nama": "TV", "harga": 5000000},
      {"kode": "A003", "nama": "Mesin Cuci", "harga": 1500000},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        leading: IconButton(
          icon: const Icon(Icons.logout), // tanda panah keluar
          onPressed: () {
            Navigator.pop(context); // kembali ke halaman sebelumnya
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add), // tombol tambah (+)
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProdukForm()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: produkList.length,
        itemBuilder: (context, index) {
          final produk = produkList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: Text(
                produk['nama'],
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(produk['harga'].toString()),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProdukPage(
                      kode: produk['kode'],
                      nama: produk['nama'],
                      harga: produk['harga'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
