import 'package:flutter/material.dart';

class StackHome extends StatelessWidget {
  const StackHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Stack( 
        clipBehavior: Clip.none,
        children: [
          const Icon(
            Icons.shopping_cart,
            color: Colors.blue, 
            size: 50, 
          ),
          Positioned(
            top: -5.0, 
            right: -5.0, 
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red, 
              child: const Text(
                '10', 
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, 
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
