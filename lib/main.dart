import 'package:flutter/material.dart';
import 'package:music_player/pages/enter_page.dart';
import 'package:music_player/pages/home_page.dart';
import 'package:music_player/pages/perform_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'enter_page',
      routes: {
        'enter_page': (context) => const EnterPage(),
        'home_page': (context) => const HomePage(),
        'perform_page': (context) => const PerformPage(),
      },
    );
  }
}
