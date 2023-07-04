import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({
    super.key,
    required this.texto,
    this.grande = false,
  });

  final String texto;
  final bool grande;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: grande ? 2 : 1,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          textStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w200,
          ),
        ),
        child: Text(
          texto,
        ),
      ),
    );
  }
}
