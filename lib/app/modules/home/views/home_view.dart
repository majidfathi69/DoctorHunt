import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../widgets/headline_widget.dart';
import '../../../widgets/search_text_field.dart';
import '../../../widgets/stars_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/image/background.png'),
                fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: SizedBox(height: 156, child: ProfileWidget()),
            ),
            Positioned.fill(
              top: 210,
              child: ListView(
                children: const [
                  SizedBox(height: 206, child: LiveDoctorsWidget()),
                  SizedBox(height: 30),
                  SizedBox(height: 90, child: DoctorSpecialtiesWidget()),
                  SizedBox(height: 30),
                  SizedBox(height: 307, child: PopularDoctorsWidget()),
                  SizedBox(height: 30),
                  SizedBox(height: 168, child: FeatureDoctorsWidget()),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Positioned(
              top: 126,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SearchTextField('Search...'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureDoctorsWidget extends StatelessWidget {
  const FeatureDoctorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HeadlineWidget(
            'Feature Doctor',
            seeall: () {},
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, count) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.5),
                child: SizedBox(
                    width: 96, height: 130, child: FeatureDoctorWidget()),
              );
            },
          ),
        ),
      ],
    );
  }
}

class FeatureDoctorWidget extends StatelessWidget {
  const FeatureDoctorWidget({super.key});

  @override
  build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(6),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6))),
        width: 96,
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 16,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,
                      size: 15,
                      color: Theme.of(context).colorScheme.tertiaryContainer),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star,
                          size: 15,
                          color: Theme.of(context).colorScheme.primary),
                      const SizedBox(width: 3.5),
                      Text('7.0',
                          style: Theme.of(context).textTheme.labelSmall),
                    ],
                  )
                ],
              ),
            ),
            Image.asset(featureDc),
            Column(
              children: [
                Text('Dr. Crick',
                    style: Theme.of(context).textTheme.titleSmall),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: '\$',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Theme.of(context).primaryColor)),
                      TextSpan(
                          text: ' 25.00/ hours',
                          style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PopularDoctorsWidget extends StatelessWidget {
  const PopularDoctorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HeadlineWidget(
            'Popular Doctor',
            seeall: () {},
          ),
        ),
        SizedBox(
          height: 264,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, count) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.5),
                child: PopularDoctorWidget(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class PopularDoctorWidget extends StatelessWidget {
  const PopularDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(24),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: [
            Container(
              width: 180,
              height: 190,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Image.asset(popularDc),
            ),
            Column(
              children: [
                Column(
                  children: [
                    Text('Dr. Fillerup Grab',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('Medicine Specialist',
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
                const SizedBox(child: StarsWidget(20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorSpecialtiesWidget extends StatelessWidget {
  const DoctorSpecialtiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, count) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.5),
            child: DoctorSpecialtyWidget(),
          );
        },
      ),
    );
  }
}

class DoctorSpecialtyWidget extends StatelessWidget {
  const DoctorSpecialtyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 80,
        height: 90,
        child: Image.asset(dcSpecialty),
      ),
    );
  }
}

class LiveDoctorsWidget extends StatelessWidget {
  const LiveDoctorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Live Doctor',
              style: Theme.of(context).textTheme.titleLarge),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 168,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, count) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.5),
                child: SizedBox(
                    width: 116, height: 168, child: LiveDoctorWidget()),
              );
            },
          ),
        ),
      ],
    );
  }
}

class LiveDoctorWidget extends StatelessWidget {
  const LiveDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 116,
      height: 168,
      child: Stack(
        children: [
          Image.asset(liveDc),
          Positioned(
            top: 11,
            left: 65,
            child: Container(
              width: 52,
              height: 18,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(3))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  Text('Live',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary)),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.play_circle_outline,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(userAvatar, width: 60, height: 60);
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: Theme.of(context).colorScheme.primary,
      ),
      height: 156,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Hi Handwerker! ',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 5),
              Text('Find Your Doctor',
                  style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
          const SizedBox(width: 60, height: 60, child: ProfileImageWidget()),
        ],
      ),
    );
  }
}
