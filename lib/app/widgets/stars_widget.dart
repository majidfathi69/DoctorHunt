import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (int i = 0; i < 4; i++)
          Icon(
            Icons.star,
            size: 15,
            color: Theme.of(context).colorScheme.primary,
          ),
        Icon(
          Icons.star,
          size: 15,
          color: Theme.of(context).colorScheme.tertiaryContainer,
        ),
       
      ],
    );
  }
}
