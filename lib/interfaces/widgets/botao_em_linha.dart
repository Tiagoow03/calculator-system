import 'package:calculator/interfaces/widgets/botao.dart';
import 'package:flutter/material.dart';

class BotaoEmLinhas extends StatelessWidget {
  const BotaoEmLinhas({
    super.key,
    required this.botoes,
  });

  final List<Botao> botoes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: botoes,
      ),
    );
  }
}
