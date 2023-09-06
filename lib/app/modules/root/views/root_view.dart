import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, rDelegate, currentRoute) {
        return Scaffold(
          // drawer: DrawerWidget(),

          body: GetRouterOutlet(
            initialRoute: Routes.DOCTOR_SELECT_TIME,
            anchorRoute: '/',
          ),
        );
      },
    );
  }
}
