import 'package:flutter/material.dart';

class RowHome extends StatelessWidget {
  const RowHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Row"),
        backgroundColor: Colors.blue, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Text(
              "Detail",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            IconButton(
              onPressed: () {
              },
              icon: const Icon(
                Icons.share,
                size: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
