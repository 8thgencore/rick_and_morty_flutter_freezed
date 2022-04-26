import 'package:flutter/material.dart';

enum LiveState { alive, dead, unknown }

class CharacterStatus extends StatelessWidget {
  final LiveState liveState;

  const CharacterStatus({Key? key, required this.liveState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.circle, size: 11, color: _getColorsIcon()),
        const SizedBox(width: 6),
        Text(_getText(), style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }

  String _getText() {
    switch (liveState) {
      case LiveState.alive:
        return "Alive";
      case LiveState.dead:
        return "Dead";
      case LiveState.unknown:
        return "Unknown";
    }
  }

  Color _getColorsIcon() {
    switch (liveState) {
      case LiveState.alive:
        return Colors.lightGreenAccent;
      case LiveState.dead:
        return Colors.red;
      case LiveState.unknown:
        return Colors.white;
    }
  }
}
