import 'package:flutter/material.dart';

class TextfieldHome extends StatelessWidget {
  // Menambahkan TextEditingController untuk mengontrol input teks
  final TextEditingController textController = TextEditingController();
  TextfieldHome({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Tambahkan Scaffold untuk Material Design
      appBar: AppBar(
        title: const Text('Textfield Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          maxLength: 20,
          controller: textController,
          decoration: const InputDecoration(
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.blueGrey,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
              ),
            ),
            helperText: "What's your name?",
          ),
          onChanged: (value) {
          },
        ),
      ),
    );
  }
}


