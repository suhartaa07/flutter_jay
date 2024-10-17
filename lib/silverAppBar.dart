import 'package:flutter/material.dart';

class SilverHome extends StatelessWidget {
  const SilverHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SilverAppBar',
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor:
              const Color.fromARGB(255, 245, 74, 62).withOpacity(0.2),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true, 
              snap: false, 
              floating: true, 
              expandedHeight: 200.0, 
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Silver Bar App'),
                background: FlutterLogo(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    color: index.isOdd ? Colors.white : Colors.blue[200],
                    height: 100,
                    child: Center(
                      child: Text(
                        '$index',
                        textScaleFactor: 5,
                      ),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ));
  }
}
