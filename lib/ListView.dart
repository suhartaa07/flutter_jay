import 'package:flutter/material.dart';

class ListviewHome extends StatelessWidget {
  final List<String> categories = <String>['Oline', 'Michie', 'Ella', 'Zee', 'Freya', 'Reggie'];

  ListviewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Listview'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 150), 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 8,
                      horizontal: 20, 
                    ),
                    margin: const EdgeInsetsDirectional.symmetric(horizontal: 8),
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
                  const SizedBox(height: 10), 
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
