import 'package:flutter/material.dart';

class ListviewbuilderHome extends StatelessWidget {
  final List<String> categories = <String>['Oline', 'Michie', 'Ella', 'Zee', 'Freya', 'Reggie'];
  ListviewbuilderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget ListView Builder'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 24,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 8, vertical: 4, // Menambah jarak antar item
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
