import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget(this.size, {super.key});

  final double size;
  static const int count = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < count; i++)
          Icon(Icons.star,
              color: Theme.of(context).colorScheme.primary, size: size)
      ],
    );
  }
}