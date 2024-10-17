import 'package:flutter/material.dart';

class SwitchHome extends StatefulWidget {
  const SwitchHome({super.key});

  @override
  _SwitchHomeState createState() => _SwitchHomeState();
}

class _SwitchHomeState extends State<SwitchHome> {
  bool isOn = false; // Definisikan isOn di sini

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Switch Widget'),
      ),
      body: Row(
        children: [
          const Text('Connect Instagram'),
          const SizedBox(
            width: 8,
          ),
          Switch(
            value: isOn, 
            onChanged: (bool value) {
              setState(() {
                isOn = value; // Ubah nilai isOn
              });
            },
          ),
        ],
      ),
    );
  }
}
