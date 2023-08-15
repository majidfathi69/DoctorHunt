import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'header_bg.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              width: 284,
              height: 292,
              child: Image.asset(bgSoul),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 427,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: -104,
                        top: -20,
                        child: HeaderBG(),
                      ),
                      Positioned(
                        top: 91,
                        left: 20,
                        child: SizedBox(
                          width: 336,
                          height: 336,
                          child: Image.asset(onboardImage1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: SizedBox(
                  height: 385,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(height: 85),
                      SizedBox(
                        width: 289,
                        child: Column(
                          children: [
                            Text('Find Trusted Doctors',
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(height: 11),
                            const Text(
                              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 52),
                      SizedBox(
                        height: 91,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 295,
                              height: 54,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Get Started'),
                              ),
                            ),
                            const SizedBox(height: 14),
                            GestureDetector(
                              onTap: () {},
                              child: const Text('Skip'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 43),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
