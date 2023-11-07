import 'package:doctor_hunt/app/widgets/headline_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/popular_doctor_controller.dart';

class PopularDoctorView extends GetView<PopularDoctorController> {
  const PopularDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          // TODO: sec1
          SizedBox(height: 307, child: PopularDoctorsWidget()),
          SizedBox(height: 20),
          // TODO: sec2
          Categorys(),
        ],
      ),
      appBar: AppBar(),
    );
  }
}

class Categorys extends StatelessWidget {
  const Categorys({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 496,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Category', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(
                    bottom: 14,
                  ),
                  child: Category(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 104,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 315,
        height: 82,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 11, 10, 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('lib/assets/image/Group 581.png'),
              const SizedBox(
                width: 15.05,
              ),
              Expanded(
                child: Column(
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
                            )
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
                      height: 8.59,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            for (int i = 1; i < 5; i++)
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
                        Text(
                          '2.4 (2475 views)',
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularDoctorsWidget extends StatelessWidget {
  const PopularDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeadlineWidget(),
        SizedBox(height: 15),
        SizedBox(
          height: 264,
          child: PopularDoctorWidget(),
        )
      ],
    );
  }
}

class PopularDoctorWidget extends StatelessWidget {
  const PopularDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            width: 190,
            height: 264,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('lib/assets/image/image.png',
                    height: 180, width: 190),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Dr. Blessing',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Dentist Specialist',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 1; i < 5; i++)
                      Icon(
                        Icons.star,
                        size: 23,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    Icon(
                      Icons.star,
                      size: 23,
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
