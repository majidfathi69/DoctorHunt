import 'package:doctor_hunt/app/widgets/appbar_widget.dart';
import 'package:doctor_hunt/app/widgets/headline_widget.dart';
import 'package:doctor_hunt/app/widgets/stars_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/popular_doctor_controller.dart';

class PopularDoctorView extends GetView<PopularDoctorController> {
  const PopularDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'lib/assets/image/background.png',
                ),
                fit: BoxFit.cover)),
        child: ListView(
          children: const [
            SizedBox(height: 100, child: AppbarWidget('Popular Doctor')),
            SizedBox(height: 307, child: PopularDoctorsWidget()),
            SizedBox(height: 20),
            CategoryWidget(),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 618,
      width: 335,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
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
                    bottom: 15,
                  ),
                  child: CategoryDoctorWidget(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryDoctorWidget extends StatelessWidget {
  const CategoryDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 104,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('lib/assets/image/Group 581.png'),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Icons.favorite_border_outlined,
                      color: Theme.of(context).colorScheme.secondary,
                    )
                  ],
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
                            text: '2.4',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: ' (2475 views)',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeadlineWidget(
          'Popular Doctor',
          seeall: () {},
        ),
        const SizedBox(height: 15),
        const SizedBox(height: 264, child: PopularDoctorWidget())
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('lib/assets/image/image.png',
                    height: 180, width: 190),
                const SizedBox(height: 10),
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
                const SizedBox(height: 10),
                const SizedBox(height: 20, child: StarsWidget(20)),
              ],
            ),
          ),
        );
      },
    );
  }
}
