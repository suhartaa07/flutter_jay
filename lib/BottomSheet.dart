import 'package:flutter/material.dart';

class BottomsheetHome extends StatefulWidget {
  const BottomsheetHome({super.key});

  @override
  _DialogHomeState createState() => _DialogHomeState();
}

class _DialogHomeState extends State<BottomsheetHome> {
  String sex = 'male'; // Definisikan sex dengan nilai default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottomsheet Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Center( // Tambahkan widget body untuk menampung ElevatedButton
        child: ElevatedButton(
          onPressed: () async {
            await showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(20.0), 
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                        const Text('Your order was placed!'), 
                        const SizedBox(
                          height: 20.0, 
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {
                            Navigator.pop(context); 
                          },
                          child: const Text("OK"), 
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text("Open Bottom Sheet"), // Tambahkan child untuk tombol di body
        ),
      ),
    );
  }
}
