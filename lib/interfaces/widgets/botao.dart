import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({
    super.key,
    required this.texto,
    this.grande = false,
    this.cor = const Color(0xFF2E2F38),
  });

  const Botao.operacao({
    super.key,
    required this.texto,
    this.grande = false,
    this.cor = const Color(0xFF4B5EFC),
  });

  const Botao.superior({
    super.key,
    required this.texto,
    this.grande = false,
    this.cor = const Color(0xFF4E505F),
  });


  final String texto;
  final bool grande;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: grande ? 2 : 1,
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: cor,
            textStyle: const TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w300,
              fontFamily: 'WorkSans',
            ),
          ),
          child: Text(
            texto,
          ),
        ),
      ),
    );
  }
}
