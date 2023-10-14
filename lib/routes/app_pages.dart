import 'package:get/get.dart';

import '../app/modules/onBoarding/onboarding_screen.dart';
import '../app/modules/root/bindings/root_binding.dart';
import '../app/modules/root/views/root_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: '/',
      page: () => const RootView(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          name: _Paths.ONBOARDING,
          page: () => const OnboardingScreenOne(),
          children: [
            GetPage(
              name: _Paths.ONBOARDING_TWO,
              page: () => const OnboardingScreenTwo(),
              children: [
                GetPage(
                  name: _Paths.ONBOARDING_THREE,
                  page: () => const OnboardingScreenThree(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ];
}
