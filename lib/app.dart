import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
