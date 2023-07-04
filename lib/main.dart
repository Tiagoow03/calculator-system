import 'package:calculator/interfaces/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculadora());
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF707070), //default
          secondary: const Color(0xFFFA9E0D), //operation
          inversePrimary: const Color(0xFF525252), //dark
        ),
      ),
    );
  }
}
