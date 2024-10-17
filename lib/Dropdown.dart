import 'package:flutter/material.dart';

class DropdownHome extends StatefulWidget {
  const DropdownHome({super.key});

  @override
  _DropdownHomeState createState() => _DropdownHomeState();
}

class _DropdownHomeState extends State<DropdownHome> {
  String selected = 'English';
  final List<String> dropdownList = ['English', 'Spanish', 'French'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Dropdown'),
        backgroundColor: Colors.blue,
      ),
      body: Material( // Gunakan Material di sini sebagai parent
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Your favorite language'),
              const SizedBox(width: 8),
              DropdownButton<String>(
                value: selected,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 20,
                style: TextStyle(color: Colors.blue[600]),
                underline: Container(
                  height: 2,
                  color: Colors.grey,
                ),
                items: dropdownList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) {
                      selected = val;
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
