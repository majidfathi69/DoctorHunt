import 'package:flutter/material.dart';

import '../../../widgets/appbar_widget.dart';
import '../../../widgets/search_text_field.dart';

class FindDoctorsView extends StatelessWidget {
  const FindDoctorsView({super.key});

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
          children: [
            const SizedBox(height: 100, child: AppbarWidget('Find Doctors')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  height: 54,
                  child: SearchTextField(
                    'Dentist',
                    search: () {},
                  )),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchResualtsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResualtsWidget extends StatelessWidget {
  const SearchResualtsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 725,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: SearchResualtWidget(),
          );
        },
      ),
    );
  }
}

class SearchResualtWidget extends StatelessWidget {
  const SearchResualtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 335,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 88.905,
                width: 91.07382,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/image/Ductor.png'),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(width: 13.86),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 63.20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Dr. Shruti Kedia',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text('Tooths Dentist',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                              Text('7 Years experience ',
                                  style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                        ),
                        Icon(Icons.favorite,
                            color: Theme.of(context).colorScheme.primary)
                      ],
                    ),
                    const SizedBox(
                      height: 9.6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Text(
                          '87%',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Icon(
                          Icons.circle,
                          size: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Text(
                          '69 Patient Stories',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          //button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Next Available ',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary)),
                  Text('10:00 AM tomorrow ',
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
              SizedBox(
                width: 110.872,
                height: 34.745,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                  child: const Text(
                    'Book Now',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
