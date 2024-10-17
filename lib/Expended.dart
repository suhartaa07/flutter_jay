import 'package:flutter/material.dart';

class ExpendedHome extends StatelessWidget {
  const ExpendedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Expanded '),
        backgroundColor: Colors.blue,
      ),
      body: const Row(
        children: [
          Icon(Icons.arrow_back_ios),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'List Checklist',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Icon(
            Icons.check,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
