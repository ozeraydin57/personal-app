import 'package:flutter/material.dart';
import 'package:ozer_aydin/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Özer Aydın",
       home: Home()
    );
  }
}
