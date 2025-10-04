import 'package:flutter/material.dart';

class ProdukPage extends StatelessWidget {
  final String kode;
  final String nama;
  final int harga;

  const ProdukPage({
    super.key,
    required this.kode,
    required this.nama,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Kode Produk : $kode\n'
              'Nama Produk : $nama\n'
              'Harga : $harga',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
