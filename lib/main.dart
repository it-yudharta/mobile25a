import 'package:flutter/material.dart';
import 'package:mobile25a/pages/album_page.dart';
import 'package:mobile25a/pages/home_page.dart';
import 'package:mobile25a/pages/profile_page.dart';
import 'package:mobile25a/pages/setting_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const String supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd5bnlzaWxkc2RtanRxaGppbm90Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDUyMTk0MTQsImV4cCI6MjA2MDc5NTQxNH0.5nMAx-p7jmulMzm8wW5HuSkryh7c0ZnFbMgHuAQjgzQ';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://gynysildsdmjtqhjinot.supabase.co',
    anonKey: supabaseKey,
  );

  runApp(const MainApp());
}

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
        '/album': (context) => AlbumPage(),
      },
      // home: Scaffold(body: Center(child: Text("halo"))),
    );
  }
}
