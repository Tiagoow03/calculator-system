import 'package:calculator/interfaces/widgets/botao.dart';
import 'package:calculator/interfaces/widgets/botao_em_linha.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  const Teclado({
    super.key,
    required this.aoPressionar,
  });

  final void Function(String) aoPressionar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          BotaoEmLinhas(botoes: [
            Botao.superior(
              texto: 'AC',
              grande: true,
              aoPressionar: aoPressionar,
            ),
            Botao.superior(
              texto: '%',
              aoPressionar: aoPressionar,
            ),
            Botao.operacao(
              texto: '÷',
              aoPressionar: aoPressionar,
            ),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(
              texto: '7',
              aoPressionar: aoPressionar,
            ),
            Botao(
              texto: '8',
              aoPressionar: aoPressionar,
            ),
            Botao(
              texto: '9',
              aoPressionar: aoPressionar,
            ),
            Botao.operacao(
              texto: 'x',
              aoPressionar: aoPressionar,
            ),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(
              texto: '4',
              aoPressionar: aoPressionar,
            ),
            Botao(
              texto: '5',
              aoPressionar: aoPressionar,
            ),
            Botao(
              texto: '6',
              aoPressionar: aoPressionar,
            ),
            Botao.operacao(
              texto: '-',
              aoPressionar: aoPressionar,
            ),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(
              texto: '1',
              aoPressionar: aoPressionar,
            ),
            Botao(
              texto: '2',
              aoPressionar: aoPressionar,
            ),
            Botao(
              texto: '3',
              aoPressionar: aoPressionar,
            ),
            Botao.operacao(
              texto: '+',
              aoPressionar: aoPressionar,
            ),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(
              texto: '0',
              grande: true,
              aoPressionar: aoPressionar,
            ),
            Botao(
              texto: ',',
              aoPressionar: aoPressionar,
            ),
            Botao.operacao(
              texto: '=',
              aoPressionar: aoPressionar,
            ),
          ]),
        ],
      ),
    );
  }
}
