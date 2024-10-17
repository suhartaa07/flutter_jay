import 'package:flutter/material.dart';

class RadioHome extends StatefulWidget {
  const RadioHome({super.key});

  @override
  _SwitchHomeState createState() => _SwitchHomeState();
}

class _SwitchHomeState extends State<RadioHome> {
  String sex = 'male'; // Definisikan sex dengan nilai default

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Radio Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          const Text('Gender: '),
          const SizedBox(width: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 'male', 
                groupValue: sex, 
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) {
                      sex = val; // Ubah nilai sex
                    }
                  });
                },
              ),
              const Text('Male'),
            ],
          ),
          const SizedBox(width: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 'female', // Perbaiki 'famale' menjadi 'female'
                groupValue: sex, 
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) {
                      sex = val; // Ubah nilai sex
                    }
                  });
                },
              ),
              const Text('Female'), // Perbaiki label menjadi 'Female'
            ],
          ),
        ],
      ),
    );
  }
}
