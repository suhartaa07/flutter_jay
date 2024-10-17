import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomnavigationbarHome extends StatefulWidget {
  const BottomnavigationbarHome({super.key});

  @override
  State<BottomnavigationbarHome> createState() => _NavigationBottomCuyState();
}

class _NavigationBottomCuyState extends State<BottomnavigationbarHome> {
  int _selectedIndex = 0;

  List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.search, 'label': 'Search'},
    {'icon': Icons.add, 'label': 'Add'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];

  // Widget list untuk tiap menu yang dipilih
  List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Add Page')),
    Center(child: Text('Profile Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottomnavigationbar Widget'),
      ),
      body: _pages[_selectedIndex], // Menampilkan konten berdasarkan item yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.blue,
        elevation: 32.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 14.0,
          height: 1.5,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12.0,
          height: 1.5,
        ),
        items: menuItems.map<BottomNavigationBarItem>((item) {
          return BottomNavigationBarItem(
            icon: Icon(item['icon']),
            label: item['label']!,
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
