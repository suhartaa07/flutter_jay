import 'package:flutter/material.dart';

class TextHome extends StatelessWidget {
  const TextHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Text(
              'ini adalah text',
              style: TextStyle(fontSize: 22.0),
            ),
          ],
        ),
      ),
    );
  }
}
