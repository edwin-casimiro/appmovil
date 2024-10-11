import 'package:flutter/material.dart';
import 'package:movil/pages/home.dart';
//import 'package:appventass/models/bag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'lujos la pava',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  } //MaterailApp
}
