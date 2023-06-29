import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({
    super.key,
    required this.texto,
    required this.grande,
    required this.cor,
    required this.cb,
  });

  const Botao.grande({
    super.key,
    required this.texto,
    this.grande = true,
    required this.cor,
    required this.cb,
  });

  const Botao.operacao({
    super.key,
    required this.texto,
    this.grande = false,
    required this.cor,
    required this.cb,
  });

  final String texto;
  final bool grande;
  final Color cor;
  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: grande ? 2 : 1,
      child: ElevatedButton(
        onPressed: () {
          cb(texto);
        },
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
