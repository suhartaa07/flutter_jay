import 'package:flutter/material.dart';

class TabBarHome extends StatefulWidget {
  const TabBarHome({super.key});

  @override
  _BottomnavigationbarHomeState createState() => _BottomnavigationbarHomeState(); // Mengembalikan state yang sesuai
}

class _BottomnavigationbarHomeState extends State<TabBarHome> with SingleTickerProviderStateMixin {
  late TabController _tabController; // Tambahkan controller

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Inisialisasi TabController
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose TabController saat sudah tidak digunakan
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabbar Widget'),
        bottom: TabBar(
          controller: _tabController, // Tambahkan controller untuk TabBar
          tabs: const [
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
            Tab(
              icon: Icon(Icons.directions_ferry),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController, // Tambahkan controller untuk TabBarView
        children: const [
          Center(
            child: Text('tab 1'),
          ),
          Center(
            child: Text('tab 2'),
          ),
          Center(
            child: Text('tab 3'),
          ),
        ],
      ),
    );
  }
}
