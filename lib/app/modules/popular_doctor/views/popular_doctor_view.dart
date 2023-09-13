import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/popular_doctor_controller.dart';

class PopularDoctorView extends GetView<PopularDoctorController> {
  const PopularDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // TODO: sec1
          Container(
            height: 243,
            width: double.infinity,
            //margin: EdgeInsets.only(left: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Popular Doctor',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'See all',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                          ),
                          //TODO: unknow color Icon
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Container(
                          //TODO: in  sizedBox not BorderRadius
                          width: 136,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('lib/assets/image/image.png'),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Truluck Nik',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  Text(
                                    'Medicine Specialist',
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      for (int i = 1; i < 5; i++)
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          // TODO: sec2
          Container(
            height: 496,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Category', style: Theme.of(context).textTheme.titleLarge),
                Expanded(
                    child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 14, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('lib/assets/image/Group 581.png'),
                                const SizedBox(
                                  width: 15.05,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Dr. Pediatrician',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Specialist Cardiologist',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 55.95,
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiaryContainer,
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        for (int i = 1; i < 5; i++)
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiaryContainer,
                                        ),
                                        SizedBox(
                                          width: 37.12,
                                        ),
                                        Text(
                                          '2.4 (2475 views)',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ))
              ],
            ),
          )
        ],
      ),
      appBar: AppBar(),
    );
  }
}
