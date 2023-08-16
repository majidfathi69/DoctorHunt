import 'package:flutter/material.dart';

class HeaderBG extends StatelessWidget {
  const HeaderBG({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 171,
      child: CircleAvatar(
        radius: 170,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
