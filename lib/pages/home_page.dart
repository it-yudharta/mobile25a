import 'package:flutter/material.dart';
import 'package:mobile25a/pages/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/setting'),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed:
                  () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailPage(id: 123),
                      settings: RouteSettings(arguments: "buku"),
                    ),
                  ),
              child: Text("Detail"),
            ),
            const Text("Hom Page"),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/album"),
              child: Text("Album"),
            ),
          ],
        ),
      ),
    );
  }
}
