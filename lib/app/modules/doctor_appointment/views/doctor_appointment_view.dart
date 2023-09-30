import 'package:flutter/material.dart';

class DoctorAppintmentView extends StatelessWidget {
  const DoctorAppintmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/assets/image/background.png'),
            fit: BoxFit.cover),
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 403.0,
            ),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: TimeWidget(),
          ),
        ],
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Theme.of(context).colorScheme.onPrimary),
      child: Column(
        children: [
          const SizedBox(height: 35),
          const AvailableTime(),
          const SizedBox(height: 38),
          const Reminder(),
          const SizedBox(height: 25),
          SizedBox(
            width: 295,
            height: 54,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6))),
              child: const Text('Confirm'),
            ),
          ),
        ],
      ),
    );
  }
}

class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Reminder Me Before',
                style: Theme.of(context).textTheme.titleSmall),
          ),
          const SizedBox(height: 26),
          Expanded(
              child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 9),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '30',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          'Minit',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              if (index == 1) {
                return Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '25',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                          Text(
                            'Minit',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ))
        ],
      ),
    );
  }
}

class AvailableTime extends StatelessWidget {
  const AvailableTime({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Available Time',
                style: Theme.of(context).textTheme.titleSmall),
          ),
          const SizedBox(height: 25),
          Expanded(
              child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 9),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '10:00',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          'AM',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              if (index == 1) {
                return Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '02:00',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                          Text(
                            'pM',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ))
        ],
      ),
    );
  }
}
