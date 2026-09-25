import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MovieShelfApp());
}

class MovieShelfApp extends StatelessWidget {
  const MovieShelfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Shelf',

      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF101014),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      home: const HomeScreen(),
    );
  }
}