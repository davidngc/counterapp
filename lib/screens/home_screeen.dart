import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSizeText = TextStyle(fontSize: 30);

    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print('presionado');
            counter++;
          },
          child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
