import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget(this.title, {super.key, this.seeall});

  final String title;
  final Function()? seeall ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        InkWell(
          onTap: seeall,
          child: Row(
            children: [
              Text(
                'See all',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.arrow_forward_ios,
                size: 11,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
