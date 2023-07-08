import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ThemeSwitcherWidget extends StatelessWidget {
  final bool ativo;
  final Function() trocarTema;

  const ThemeSwitcherWidget({
    Key? key,
    this.ativo = false,
    required this.trocarTema,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: trocarTema,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Theme.of(context).colorScheme.onTertiary.withOpacity(.2),
            ),
            child: Stack(
              children: [
                FlutterSwitch(
                  padding: 2,
                  activeColor: const Color(0xFF0D0D0D),
                  inactiveColor: Theme.of(context).colorScheme.secondary,
                  toggleSize: 15,
                  value: ativo,
                  width: 40,
                  height: 20,
                  borderRadius: 10.0,
                  onToggle: (_) => trocarTema(),
                ),
                Padding(
                  padding: ativo
                      ? const EdgeInsets.only(
                    left: 4.0,
                    top: 4.0,
                  )
                      : const EdgeInsets.only(
                    left: 24.0,
                    top: 4.0,
                  ),
                  child: ativo
                      ? Image.asset('assets/images/icon_dark_mode.png')
                      : Image.asset('assets/images/icon_light_mode.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}