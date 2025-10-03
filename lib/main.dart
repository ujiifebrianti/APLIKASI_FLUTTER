import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hilangkan tulisan debug
      theme: ThemeData(
        primarySwatch: Colors.blue, // <- warna utama biru
        useMaterial3: false,        // <- pakai style Material 2 (AppBar biru)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Flutter"),
        ),
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
