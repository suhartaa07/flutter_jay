import 'package:flutter/material.dart';

class ContainerHome extends StatelessWidget {
  const ContainerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        // backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset.zero,
                blurRadius: 15.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}