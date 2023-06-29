import 'package:calculator/interfaces/widgets/botao.dart';
import 'package:calculator/interfaces/widgets/botao_em_linha.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  const Teclado({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: const [
          BotaoEmLinhas(botoes: [
            Botao(texto: 'C'),
            Botao(texto: '+/-'),
            Botao(texto: '%'),
            Botao.operacao(texto: '÷'),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(texto: '7'),
            Botao(texto: '8'),
            Botao(texto: '9'),
            Botao.operacao(texto: 'x'),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(texto: '4'),
            Botao(texto: '5'),
            Botao(texto: '6'),
            Botao.operacao(texto: '-'),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(texto: '1'),
            Botao(texto: '2'),
            Botao(texto: '3'),
            Botao.operacao(texto: '+'),
          ]),
          BotaoEmLinhas(botoes: [
            Botao.grande(texto: '0'),
            Botao(texto: ','),
            Botao.operacao(texto: '='),
          ]),
        ],
      ),
    );
  }
}
