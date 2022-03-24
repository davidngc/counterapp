import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle fontSizeText = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('Numero de Clicks', style: fontSizeText),
            Text('$counter', style: fontSizeText),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
              onPressed: () => setState(() => counter++),
              child: const Icon(Icons.exposure_plus_1)),
          const SizedBox(width: 40),
          FloatingActionButton(
              onPressed: () => setState(() => counter = 0),
              child: const Icon(Icons.restore)),
          const SizedBox(width: 40),
          FloatingActionButton(
              onPressed: () => setState(() => counter--),
              child: const Icon(Icons.exposure_minus_1)),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
