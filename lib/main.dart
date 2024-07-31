import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Djeziri Adel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:  HomePage(),
    );
  }
}

