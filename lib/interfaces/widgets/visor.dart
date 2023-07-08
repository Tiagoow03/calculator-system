import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  const Visor({
    super.key,
    required this.texto,
  });

  final String texto;

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
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: FittedBox(
                alignment: Alignment.bottomRight,
                fit: BoxFit.scaleDown,
                child: Text(
                  '2 + 2',
                  maxLines: 1,
                  style: TextStyle(
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
                  texto,
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
