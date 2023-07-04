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
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
