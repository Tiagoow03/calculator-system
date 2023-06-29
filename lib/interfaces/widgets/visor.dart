import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  const Visor({super.key, required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(48, 48, 48, 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                alignment: Alignment.bottomRight,
                fit: BoxFit.scaleDown,
                child: Text(
                  texto,
                  maxLines: 1,
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w100,
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
