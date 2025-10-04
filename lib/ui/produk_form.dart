import 'package:flutter/material.dart';
import 'produk_page.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeController = TextEditingController();
  final _namaController = TextEditingController();
  final _hargaController = TextEditingController();

  @override
  void dispose() {
    _kodeController.dispose();
    _namaController.dispose();
    _hargaController.dispose();
    super.dispose();
  }

  void _simpanData() {
    String kode = _kodeController.text.trim();
    String nama = _namaController.text.trim();
    String harga = _hargaController.text.trim();

    if (kode.isEmpty || nama.isEmpty || harga.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Semua field harus diisi")),
      );
      return;
    }

    // Navigasi ke halaman detail produk sambil kirim data
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProdukPage(
          kode: kode,
          nama: nama,
          harga: int.tryParse(harga) ?? 0, // ubah ke int
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _kodeController,
              decoration: const InputDecoration(labelText: "Kode Produk"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(labelText: "Nama Produk"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _hargaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Harga"),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _simpanData,
                child: const Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
