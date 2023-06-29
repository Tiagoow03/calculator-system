import 'package:calculator/interfaces/widgets/teclado.dart';
import 'package:calculator/interfaces/widgets/visor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Visor(texto: '123.456'),
        Teclado(),
      ],
    );
  }
}