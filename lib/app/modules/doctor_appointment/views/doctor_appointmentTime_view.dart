import 'package:doctor_hunt/app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'thank_you_view.dart';

class AppointmentTimeView extends StatelessWidget {
  const AppointmentTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/image/background.png'),
              fit: BoxFit.cover),
        ),
        child: const SafeArea(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 403.0,
                  child: Column(
                    children: [
                      SizedBox(height: 100, child: AppbarWidget('Appointment')),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                fillOverscroll: true,
                child: TimeWidget(),
              ),
            ],
          ),
        ),
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
          const AvailableTimesWidget(),
          const SizedBox(height: 40),
          const RemindersWidget(),
          const SizedBox(height: 20),
          SizedBox(
            width: 295,
            height: 54,
            child: ElevatedButton(
              onPressed: () {
                Get.dialog(const ThankYouView());
              },
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

class RemindersWidget extends StatelessWidget {
  const RemindersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Reminder Me Before',
              style: Theme.of(context).textTheme.titleSmall),
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: 60,
          child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20 : 10),
            child: ReminderWidget(
              backgroundColor:
                  Theme.of(context).colorScheme.primaryContainer,
              textColor: Theme.of(context).colorScheme.primary,
            ),
          );
            },
            separatorBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ReminderWidget(
                backgroundColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
            );
          } else {
            return Container();
          }
            },
          ),
        )
      ],
    );
  }
}

class ReminderWidget extends StatelessWidget {
  const ReminderWidget({
    super.key,
    this.backgroundColor,
    this.textColor,
  });
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0), backgroundColor: backgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '30',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: textColor),
            ),
            Text(
              'Minit',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}

class AvailableTimesWidget extends StatelessWidget {
  const AvailableTimesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Available Time',
              style: Theme.of(context).textTheme.titleSmall),
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: 60,
          child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20 : 10),
            child: AvailableTimeWidget(
              backgroundColor:
                  Theme.of(context).colorScheme.primaryContainer,
              textColor: Theme.of(context).colorScheme.primary,
            ),
          );
            },
            separatorBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AvailableTimeWidget(
                backgroundColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
            );
          } else {
            return Container();
          }
            },
          ),
        )
      ],
    );
  }
}

class AvailableTimeWidget extends StatelessWidget {
  const AvailableTimeWidget({
    super.key,
    this.backgroundColor,
    this.textColor,
  });

  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0), backgroundColor: backgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '10:00',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: textColor),
            ),
            Text(
              'AM',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
