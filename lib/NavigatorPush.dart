import 'package:flutter/material.dart';

class NavigatorpushHome extends StatefulWidget {
  const NavigatorpushHome({super.key});

  @override
  _DialogHomeState createState() => _DialogHomeState();
}

class _DialogHomeState extends State<NavigatorpushHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const NextPage(); 
                }));
              },
              child: const Text('Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();  
          },
          child: const Text('Go Back (pop)'), 
        ),
      ),
    );
  }
}
