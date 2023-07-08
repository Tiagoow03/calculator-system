import 'package:calculator/interfaces/widgets/teclado.dart';
import 'package:calculator/interfaces/widgets/visor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF17171C)),
      child: Column(
        children: [
          const Visor(texto: '1,258.2'),
          Align(
            alignment: Alignment.center,
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
              ),
              margin: const EdgeInsets.all(8),
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(180),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 1,
                ),
              ),
            ),
          ),
          const Teclado(),
        ],
      ),
    );
  }
}
