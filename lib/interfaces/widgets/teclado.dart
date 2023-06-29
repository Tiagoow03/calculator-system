import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  const Teclado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('1'),
          ),
        ],
      ),
    );
  }
}
