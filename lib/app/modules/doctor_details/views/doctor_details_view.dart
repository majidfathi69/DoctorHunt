import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            SizedBox(height: 100,child: AppbarWidget('Doctor Details')),
            DoctorDetails(),
            SizedBox(height: 25),
            DoctorState(),
            SizedBox(height: 25),
            ServicesDescription(),
            SizedBox(height: 30),
            MapWidget(),
          ],
        ),
      ),
    );
  }
}

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: UnconstrainedBox(
        child: Container(
          width: 335,
          height: 210,
          padding: const EdgeInsets.all(10),
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
    // TODO: implement build
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 19),
      child: SizedBox(
        height: 149,
        width: 336,
        child: Services(),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                //TODO  unknow color line
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
    );
  }
}

class DoctorState extends StatelessWidget {
  const DoctorState({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: UnconstrainedBox(
        child: Container(
          width: 305,
          height: 84,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const StateWidget(),
        ),
      ),
    );
  }
}

class StateWidget extends StatelessWidget {
  const StateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //for (int i = 0; i < 3; i++)
          Container(
            width: 90,
            height: 64,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '100',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Runing',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),
          ),
          Container(
            width: 90,
            height: 64,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '500',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Ongoing',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: 90,
            height: 64,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '700',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Patient',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 390,
        height: 170,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(6)),
        child: const DoctorDetail(),
      ),
    );
  }
}

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('lib/assets/image/DoctorDetails.png'),
              const SizedBox(
                width: 12,
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
                          Icons.favorite,
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
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
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
                            ),
                          ],
                        ),
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
                              //TODO colors
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
          const SizedBox(height: 15),
          SizedBox(
            width: 140,
            height: 32,
            child: ElevatedButton(
              onPressed: () {},
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
