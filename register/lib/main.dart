import 'package:flutter/material.dart';
import 'package:register/pages/home.dart';
import 'package:register/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => RegistrationPage(),
        '/home': (context) => Home(),
      },
    );
  }
}
