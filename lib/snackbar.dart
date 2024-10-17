import 'package:flutter/material.dart';

class SnackbarHome extends StatelessWidget {
  const SnackbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text("Widget Snackbar"),
    backgroundColor: Colors.blue,
    actions: const [],
    ),
    body: SingleChildScrollView(
    child: Container(
    padding: const EdgeInsets.all(20.0),
    child:  Column(
    children: [
      ElevatedButton(
        onPressed: () {
         ScaffoldMessenger.of(context).showSnackBar(
           const SnackBar(
            backgroundColor: Colors.blue,
            content: Text('Your request is succesful'),
           ),
          );
      },
      child: const Text('Open snackbar'),
      ),
    ],
    ),
    ),
    ),
    );
  }
}