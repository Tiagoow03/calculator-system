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
      child: const Column(
        children: [
          BotaoEmLinhas(botoes: [
            Botao(texto: 'C', grande: true,),
            Botao(texto: '%'),
            Botao(texto: '÷'),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(texto: '7'),
            Botao(texto: '8'),
            Botao(texto: '9'),
            Botao(texto: 'x'),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(texto: '4'),
            Botao(texto: '5'),
            Botao(texto: '6'),
            Botao(texto: '-'),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(texto: '1'),
            Botao(texto: '2'),
            Botao(texto: '3'),
            Botao(texto: '+'),
          ]),
          BotaoEmLinhas(botoes: [
            Botao(texto: '0', grande: true,),
            Botao(texto: ','),
            Botao(texto: '='),
          ]),
        ],
      ),
    );
  }
}
