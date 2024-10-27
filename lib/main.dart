// lib/main.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/page/HRPage.dart';
import 'package:tasky/page/ManagerPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasky',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to HR Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HRPage()),
                );
              },
              child: Text('Go to HR Page'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to Manager Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManagerPage()),
                );
              },
              child: Text('Go to Manager Page'),
            ),
          ],
        ),
      ),
    );
  }
}
