import 'package:flutter/material.dart';

class CheckboxHome extends StatefulWidget {
  const CheckboxHome({super.key});

  @override
  _SwitchHomeState createState() => _SwitchHomeState();
}

class _SwitchHomeState extends State<CheckboxHome> {
  bool isChecked = false; // Definisikan isChecked di sini

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('checkbox Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Row( // Tambahkan body untuk menampung Row
        children: [
          Checkbox(
            value: isChecked,
            activeColor: Colors.blue,
            onChanged: (val) { 
              setState(() {
                isChecked = val ?? false; // Mengatur nilai isChecked
              });
            },
          ),
          const SizedBox(
            width: 4,
          ),
          const Text(
            'Agree to Terms & Conditions',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
