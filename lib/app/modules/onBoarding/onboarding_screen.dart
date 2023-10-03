import 'package:doctor_hunt/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import 'header_bg.dart';

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingScreen(
      mdl: OnboardingModel(
        title: 'Easy Appointments',
        content:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
        imageAddress: onboardImage3,
        headerBGL: true,
        getStarted: () {
          // Get.rootDelegate.offAndToNamed(Routes.HOME);
        },
        skip: () {},
      ),
    );
  }
}

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingScreen(
      mdl: OnboardingModel(
        title: 'Choose Best Doctors',
        content:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
        imageAddress: onboardImage2,
        headerBGL: false,
        getStarted: () {
          Get.rootDelegate.toNamed(Routes.ONBOARDING_THREE);
        },
        skip: () {},
      ),
    );
  }
}

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingScreen(
      mdl: OnboardingModel(
        title: 'Find Trusted Doctors',
        content:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
        imageAddress: onboardImage1,
        headerBGL: true,
        getStarted: () {
          Get.rootDelegate.toNamed(Routes.ONBOARDING_TWO);
        },
        skip: () {},
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final OnboardingModel mdl;
  const OnboardingScreen({super.key, required this.mdl});

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
                      Positioned(
                        left: mdl.headerBGL ? -104 : null,
                        right: mdl.headerBGL ? null : -121,
                        top: -20,
                        child: const HeaderBG(),
                      ),
                      Positioned(
                        top: 91,
                        left: mdl.headerBGL ? 20 : null,
                        right: mdl.headerBGL ? null : 20,
                        child: SizedBox(
                          width: 336,
                          height: 336,
                          child: Image.asset(mdl.imageAddress),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 289,
                        child: Column(
                          children: [
                            Text(mdl.title,
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(height: 11),
                            Text(mdl.content, textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 91,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 295,
                              height: 54,
                              child: ElevatedButton(
                                onPressed: mdl.getStarted,
                                child: const Text('Get Started'),
                              ),
                            ),
                            const SizedBox(height: 14),
                            InkWell(
                              onTap: mdl.skip,
                              child: const Text('Skip'),
                            ),
                          ],
                        ),
                      ),
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

class OnboardingModel {
  final String title;
  final String content;
  final String imageAddress;
  final bool headerBGL;
  void Function()? getStarted;
  void Function()? skip;

  OnboardingModel({
    required this.title,
    required this.content,
    required this.imageAddress,
    required this.headerBGL,
    required this.getStarted,
    required this.skip,
  });
}
