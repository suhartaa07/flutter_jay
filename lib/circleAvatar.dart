import 'dart:math';
import 'package:flutter/material.dart';

class CircleAvatarHome extends StatelessWidget {
  const CircleAvatarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Circle Avatar'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/reggiejkt48.jpeg'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                3,
                (index) {
                  Color randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: randomColor, // Warna acak untuk setiap CircleAvatar
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
