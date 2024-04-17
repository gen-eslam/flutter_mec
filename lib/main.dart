import 'package:flutter/material.dart';
import 'package:flutter_application_1/messenger_screen.dart';
import 'package:flutter_application_1/personal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: MessagerScreen(),
    );
  }
}
