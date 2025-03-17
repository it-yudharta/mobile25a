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

typedef ValueChanged<T> = void Function(T value);

class MyWidget extends StatelessWidget {
  final String label;
  const MyWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [CounterWidget(init: 5), CounterWidget(init: 9)],
        ),
      ],
    );
  }
}

class CounterWidget extends StatefulWidget {
  final int init;

  const CounterWidget({super.key, required this.init});

  @override
  State<StatefulWidget> createState() => _CounterWidgetState(init);
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  _CounterWidgetState(int init) {
    _counter = init;
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$_counter'),
          Text('$_counter'),
          ElevatedButton(onPressed: _increment, child: const Text('Tambah')),
        ],
      ),
    );
  }
}
