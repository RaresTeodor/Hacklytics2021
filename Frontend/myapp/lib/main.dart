import 'package:flutter/material.dart';
import 'package:myapp/View/FirstPage/firstpage.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Future UFC",
      home: Scaffold(body: FirstPage()),
    );
  }
}
