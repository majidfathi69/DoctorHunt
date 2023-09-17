import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            DoctorDetails(),
            SizedBox(height: 25),
            // DoctorState(),
            SizedBox(height: 25),
            // ServicesDescription(),
            SizedBox(height: 30),
            // MapWidget(),
          ],
        ),
      ),
      appBar: AppBar(),
    );
  }
}

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ServicesDescription extends StatelessWidget {
  const ServicesDescription({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class DoctorState extends StatelessWidget {
  const DoctorState({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
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
        width: 335,
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
      padding: const EdgeInsets.fromLTRB(19, 18, 9, 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                              color: Theme.of(context).colorScheme.onPrimary,
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
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(140, 32),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4))),
            child: const Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
