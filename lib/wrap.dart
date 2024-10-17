import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class wrapHome extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
  ];
  wrapHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Widget wrap'),
      ),
      body: Wrap(
        spacing: 20,
        runSpacing: 10,
        children: colors.map((color) {
          return InkWell(
            onTap: () {},
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                width: 1.0,
                color: Colors.grey[900]!,
                ),
                color: color,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                  color: Colors.grey[900]!,
                  offset: Offset.zero,
                  blurRadius: 15,   
                  )
                ]),
            ),
          );
        }).toList(),
      ),
    );
  }
}