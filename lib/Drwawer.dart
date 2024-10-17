import 'package:flutter/material.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  _TabBarHomeState createState() => _TabBarHomeState(); // Mengembalikan state yang sesuai
}

class _TabBarHomeState extends State<DrawerHome> with SingleTickerProviderStateMixin {
  late TabController _tabController; // Tambahkan controller

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Inisialisasi TabController dengan 3 tab
  }

  @override
  void dispose() {
    _tabController.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget'),
        
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    child: FlutterLogo(size: 50),
                  ),
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  accountName: const Text(
                    'Reggie',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: const Text(
                    'sabrina.dev@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
