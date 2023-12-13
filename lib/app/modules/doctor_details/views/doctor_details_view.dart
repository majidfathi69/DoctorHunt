import 'package:doctor_hunt/app/widgets/stars_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../../widgets/appbar_widget.dart';
import '../controllers/doctor_details_controller.dart';

class DoctorDetailsView extends GetView<DoctorDetailsController> {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/image/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: const [
            SizedBox(height: 100, child: AppbarWidget('Doctor Details')),
            BookDoctorWidget(),
            SizedBox(height: 25),
            DoctorStatesWidget(),
            SizedBox(height: 25),
            ServicesDescription(),
            SizedBox(height: 30),
            MapDistanceWidget(),
          ],
        ),
      ),
    );
  }
}

class MapDistanceWidget extends StatelessWidget {
  const MapDistanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: UnconstrainedBox(
        child: Container(
          width: 335,
          height: 210,
          padding: const EdgeInsets.all(8.5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            'lib/assets/image/map.png',
          ),
        ),
      ),
    );
  }
}

class ServicesDescription extends StatelessWidget {
  const ServicesDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 149,
        width: 335,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Services',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 14,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: ' 1.',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary)),
                        TextSpan(
                            text:
                                ' Patient care should be the number one priority.',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0x6772941a),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: ' 2.',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary)),
                        TextSpan(
                            text:
                                ' If you run your practiceyou know how frustrating.',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0x6772941a),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: ' 3.',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary)),
                        TextSpan(
                            text:
                                ' That’s why some of appointment reminder system.',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorStatesWidget extends StatelessWidget {
  const DoctorStatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
          width: 305,
          height: 84,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DoctorStateWidget('100', 'Runing'),
                DoctorStateWidget('500', 'Ongoing'),
                DoctorStateWidget('700', 'Patient'),
              ],
            ),
          )),
    );
  }
}

class DoctorStateWidget extends StatelessWidget {
  const DoctorStateWidget(
    this.numberState,
    this.textState, {
    super.key,
  });
  final String numberState;
  final String textState;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      height: 64,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            numberState,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            textState,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        ],
      ),
    );
  }
}

class BookDoctorWidget extends StatelessWidget {
  const BookDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 335,
        height: 170,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(6)),
        child: const DoctorDetailsWidget(),
      ),
    );
  }
}

class DoctorDetailsWidget extends StatelessWidget {
  const DoctorDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          const SizedBox(height: 7.5),
          Row(
            children: [
              Image.asset('lib/assets/image/DoctorDetails.png'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Pediatrician',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              'Specialist Cardiologist',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.favorite_outline,
                          color: Theme.of(context).colorScheme.secondary,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const StarsWidget(15),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\$',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                              ),
                              TextSpan(
                                text: ' 28.00/hr',
                                style: Theme.of(context).textTheme.bodyLarge,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 140,
            height: 32,
            child: ElevatedButton(
              onPressed: () {
                Get.rootDelegate.offAndToNamed(Routes.DOCTOR_APPOINTMENT);
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4))),
              child: const Text('Book Now'),
            ),
          ),
        ],
      ),
    );
  }
}
