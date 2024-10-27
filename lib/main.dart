import 'package:flutter/material.dart';

import 'package:tasky/page/HRPage.dart'; // Ensure the correct import path
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HRPage()), // Updated to HRPage
            );
          },
          child: Text('Go to HR Page'),
        ),
      ),
    );
  }
}
