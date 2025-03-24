import 'package:flutter/material.dart';
import 'package:mobile25a/pages/home_page.dart';
import 'package:mobile25a/pages/profile_page.dart';
import 'package:mobile25a/pages/setting_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/setting': (context) => SettingPage(),
        '/profile': (context) => ProfilePage(),
      },
      // home: Scaffold(body: Center(child: Text("halo"))),
    );
  }
}
