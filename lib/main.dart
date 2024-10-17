import 'package:flutter/material.dart';
import 'package:flutter_application_8/text.dart';
import 'package:flutter_application_8/Button.dart';
import 'package:flutter_application_8/container.dart';
import 'package:flutter_application_8/icons.dart';
import 'package:flutter_application_8/image.dart';
import 'package:flutter_application_8/circleAvatar.dart';
import 'package:flutter_application_8/Coloumn.dart';
import 'package:flutter_application_8/Row.dart';
import 'package:flutter_application_8/ListView.dart';
import 'package:flutter_application_8/ListViewBuilder.dart';
import 'package:flutter_application_8/Gridviewbuilder.dart';
import 'package:flutter_application_8/Stack.dart';
import 'package:flutter_application_8/snackbar.dart';
import 'package:flutter_application_8/padding.dart';
import 'package:flutter_application_8/AspectRatio.dart';
import 'package:flutter_application_8/Center.dart';
import 'package:flutter_application_8/Expended.dart';
import 'package:flutter_application_8/SizedBox.dart';
import 'package:flutter_application_8/wrap.dart';
import 'package:flutter_application_8/TextField.dart';
import 'package:flutter_application_8/Dropdown.dart';
import 'package:flutter_application_8/Switch.dart';
import 'package:flutter_application_8/Radio.dart';
import 'package:flutter_application_8/CheckBox.dart';
import 'package:flutter_application_8/DatePicker.dart';
import 'package:flutter_application_8/Dialog.dart';
import 'package:flutter_application_8/BottomSheet.dart';
import 'package:flutter_application_8/NavigatorPush.dart';
import 'package:flutter_application_8/navbarpop.dart';
import 'package:flutter_application_8/BottomNavigationbar.dart';
import 'package:flutter_application_8/Tabbar.dart';
import 'package:flutter_application_8/Drwawer.dart';
import 'package:flutter_application_8/silverAppBar.dart';

///import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomnavigationbarHome(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Tambahkan const ke constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homee'),
        backgroundColor: Colors.white,
      ),
      
    );
  }
}
