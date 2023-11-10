import 'package:doctor_hunt/app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/headline_widget.dart';
import '../../../widgets/search_text_field.dart';
import '../controllers/favourite_doctor_controller.dart';

class FavouriteDoctorView extends GetView<FavouriteDoctorController> {
  const FavouriteDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/image/background.png'),
                fit: BoxFit.cover)),
        child: ListView(
          children: const [
            SizedBox(height: 100, child: AppbarWidget('Favourite Doctors')),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchTextField('Dentist'),
            ),
            SizedBox(height: 25),
            SizedBox(
              height: 370,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FavouriteDoctorsWidget(),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 168,
              child: FeatureDoctorsWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class FeatureDoctorsWidget extends StatelessWidget {
  const FeatureDoctorsWidget({
    super.key,
  });
  // TODO: implement build

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: HeadlineWidget('Feature Doctor'),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 7,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const FeatureDoctorWidget();
            },
          ),
        )
      ],
    );
  }
}

class FeatureDoctorWidget extends StatelessWidget {
  const FeatureDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 130,
        width: 96,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 13,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.primary,
                      size: 13,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '3.7',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            ),
            Image.asset('lib/assets/image/Ellipse 142.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dr. Crick',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ' \$',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: Theme.of(context).colorScheme.primary),
                      ),
                      TextSpan(
                          text: '25.00/ hours',
                          style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FavouriteDoctorsWidget extends StatelessWidget {
  const FavouriteDoctorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.count(
        //childAspectRatio: 0.9,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          4,
          (index) {
            return const FavouriteDoctorWidget();
          },
        ),
      ),
    );
  }
}

class FavouriteDoctorWidget extends StatelessWidget {
  const FavouriteDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 180,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.tertiaryContainer,
            ),
          ),
          Image.asset('lib/assets/image/Ellipse 141.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Dr. Shouey',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Specalist Cardiology',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).colorScheme.onPrimary),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary, width: 0),
            borderRadius: BorderRadius.circular(6),
          ),
          hintText: 'Dentist',
          //hintStyle: Theme.of(context).textTheme.labelLarge,
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.outline,
          ),
          suffixIcon: Icon(
            Icons.close,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
      ),
    );
  }
}
