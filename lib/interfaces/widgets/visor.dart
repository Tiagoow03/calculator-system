import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  const Visor({
    super.key,
    required this.textoPrincipal,
    required this.textoMemoria,
  });

  final String textoPrincipal;
  final String textoMemoria;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: const BoxDecoration(color: Color(0xFF17171C)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  textoMemoria,
                  maxLines: 1,
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                    color: Colors.grey,
                    fontFamily: 'WorkSans',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: FittedBox(
                alignment: Alignment.bottomRight,
                fit: BoxFit.scaleDown,
                child: Text(
                  textoPrincipal,
                  maxLines: 1,
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w300,
                    fontSize: 90,
                    color: Colors.white,
                    fontFamily: 'WorkSans',
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
