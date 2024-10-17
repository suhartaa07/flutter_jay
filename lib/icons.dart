import 'package:flutter/material.dart';

class IconsHome extends StatelessWidget {
  const IconsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Icons'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Icon(
              Icons.share,
              size: 32.0,
            ),
            Icon(
              Icons.favorite,
              size: 36.0,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
