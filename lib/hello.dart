import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // cara penulisan super.key lebih modern

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Flutter Pertama",
      debugShowCheckedModeBanner: false, // untuk menghilangkan banner debug
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // AppBar biru
          title: const Text(
            'Belajar Flutter',
            style: TextStyle(
              color: Colors.white, // Tulisan putih
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true, // agar teks di tengah
        ),
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
