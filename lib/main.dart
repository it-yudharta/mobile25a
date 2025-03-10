import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: MyWidget(label: "Cahya Bagus Sanjaya")),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String label;

  const MyWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
