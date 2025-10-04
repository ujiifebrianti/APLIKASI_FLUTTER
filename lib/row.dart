import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Row"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0), // kasih jarak biar gak mepet
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, // widget mulai dari kiri
            children: [
              Text("Row 1", style: TextStyle(fontSize: 20)),
              SizedBox(width: 16), // kasih jarak antar teks
              Text("Row 2", style: TextStyle(fontSize: 20)),
              SizedBox(width: 16),
              Text("Row 3", style: TextStyle(fontSize: 20)),
              SizedBox(width: 16),
              Text("Row 4", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
