import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          children: [
            Text('See all', style: Theme.of(context).textTheme.labelMedium),
            const Icon(
              Icons.arrow_forward_ios,
              size: 8,
            )
          ],
        ),
      ],
    );
  }
}