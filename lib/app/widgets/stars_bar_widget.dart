import 'package:flutter/material.dart';

class StarsBarWidget extends StatelessWidget {
  const StarsBarWidget(this.count, {this.size = 12, super.key});

  final int count;
  final double size;
  static const int allStars = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < allStars; i++)
          Icon(i < count ? Icons.star : Icons.star_border_outlined,
              color: Theme.of(context).colorScheme.primary, size: size)
      ],
    );
  }
}
