import 'package:flutter/material.dart';

class ColoumnHome extends StatelessWidget {
  const ColoumnHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coloumn Home'),
        backgroundColor: Colors.blue, // Atur warna AppBar
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child:const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Stylist Chair',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Rp.350.000',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF9A9390),
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
