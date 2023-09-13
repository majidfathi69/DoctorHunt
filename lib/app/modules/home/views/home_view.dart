import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: UserProfile(),
          ),
          Positioned.fill(
            top: 210,
            child: ListView(
              children: const [
                LiveDoctors(),
                SizedBox(height: 30),
                DoctorSpecialties(),
                SizedBox(height: 30),
                PopularDoctors(),
                SizedBox(height: 30),
                FeaturedDoctors(),
                SizedBox(height: 30),
              ],
            ),
          ),
          const Positioned(
            top: 126,
            child: SearchField(),
          ),
        ],
      ),
    );
  }
}

class FeaturedDoctors extends StatelessWidget {
  const FeaturedDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Feature Doctor',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                children: [
                  Text('See all',
                      style: Theme.of(context).textTheme.labelMedium),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 8,
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 22),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, count) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: FeaturedDoctor(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class FeaturedDoctor extends StatelessWidget {
  const FeaturedDoctor({super.key});

  @override
  build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      width: 96,
      height: 130,
      child: Column(
        children: [
          Container(
            height: 12.42,
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
                        size: 15, color: Theme.of(context).colorScheme.primary),
                    Text('7.0', style: Theme.of(context).textTheme.labelSmall),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Image.asset(featureDc),
          const SizedBox(height: 10),
          Column(
            children: [
              Text('Dr. Crick', style: Theme.of(context).textTheme.titleSmall),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Doctor',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                children: [
                  Text('See all',
                      style: Theme.of(context).textTheme.labelMedium),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 8,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Theme.of(context).colorScheme.onSecondary,
          height: 264,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, count) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: PopularDoctor(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class PopularDoctor extends StatelessWidget {
  const PopularDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              SizedBox(
                height: 6,
                child: Row(
                  children: [
                    for (var i = 0; i < 5; i++)
                      Icon(Icons.star,
                          color: Theme.of(context).colorScheme.primary,
                          size: 12)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DoctorSpecialties extends StatelessWidget {
  const DoctorSpecialties({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, count) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: DoctorSpecialty(),
          );
        },
      ),
    );
  }
}

class DoctorSpecialty extends StatelessWidget {
  const DoctorSpecialty({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 90,
      child: Image.asset(dcSpecialty),
    );
  }
}

class LiveDoctors extends StatelessWidget {
  const LiveDoctors({super.key});

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
        const SizedBox(height: 13),
        SizedBox(
          height: 168,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, count) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: LiveDoctor(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class LiveDoctor extends StatelessWidget {
  const LiveDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 116.48,
      height: 168,
      child: Stack(
        children: [
          Image.asset(liveDc),
          Positioned(
            top: 11,
            left: 65,
            child: Container(
              width: 45,
              height: 18,
              color: Theme.of(context).colorScheme.primaryContainer,
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

class SearchField extends StatelessWidget {
  const SearchField({super.key});

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
          hintText: 'Search...',
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: Theme.of(context).colorScheme.primary,
      ),
      height: 150,
      padding: const EdgeInsets.only(right: 20, top: 36, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi Handwerker! ',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 6),
              Text('Find Your Doctor',
                  style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
          Image.asset(userAvatar, width: 60, height: 60),
        ],
      ),
    );
  }
}
