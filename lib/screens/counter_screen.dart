import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increaseCounter() {
    counter++;
    setState(() {});
  }

  void decreaseCounter() {
    counter--;
    setState(() {});
  }

  void resetCounter() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingAction(
        increaseFn: increaseCounter,
        decreaseFn: decreaseCounter,
        resetFn: resetCounter,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CustomFloatingAction extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingAction({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FloatingActionButton(
            onPressed: () => increaseFn(),
            child: const Icon(Icons.exposure_plus_1)),
        const SizedBox(width: 40),
        FloatingActionButton(
            onPressed: () => resetFn(), child: const Icon(Icons.restore)),
        const SizedBox(width: 40),
        FloatingActionButton(
            onPressed: () => decreaseFn(),
            child: const Icon(Icons.exposure_minus_1)),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
