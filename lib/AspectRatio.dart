import 'package:flutter/material.dart';

class AspectratioHome extends StatelessWidget {
  const AspectratioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Aspect Ratio'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: AspectRatio(
            aspectRatio: 180 / 240,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
