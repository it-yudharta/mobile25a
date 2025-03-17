import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: MyWidget(label: "Cahya Bagus Sanjaya")),
      ),
    );
  }
}

typedef ValueChanged<T> = void Function(T value);

class MyWidget extends StatelessWidget {
  int _globalCounter = 0;
  final String label;
  MyWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$_globalCounter'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CounterWidget(init: 5, onChanged: (c) => _globalCounter + c),
            CounterWidget(init: 9, onChanged: (c) => _globalCounter + c),
          ],
        ),
      ],
    );
  }
}

class CounterWidget extends StatefulWidget {
  final int init;
  final ValueChanged<int> onChanged;

  const CounterWidget({super.key, required this.init, required this.onChanged});

  @override
  State<StatefulWidget> createState() => _CounterWidgetState(init);
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  _CounterWidgetState(int init) {
    _counter = init;
  }

  void _increment() {
    widget.onChanged(1);

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
