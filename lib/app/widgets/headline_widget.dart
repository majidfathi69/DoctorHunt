import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Popular Doctor',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'See all',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
