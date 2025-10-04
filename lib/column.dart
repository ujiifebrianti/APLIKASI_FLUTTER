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
      title: "Demo Column",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColumnPage(),
    );
  }
}

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, //
        title: const Text(
          "Widget Column",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Column 1", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Column 2", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Column 3", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Column 4", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
