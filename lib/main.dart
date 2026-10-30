import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const FrasesApp());
}

class FrasesApp extends StatelessWidget {
  const FrasesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FrasesApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F766E)),
      ),
      home: const HomeScreen(),
    );
  }
}
