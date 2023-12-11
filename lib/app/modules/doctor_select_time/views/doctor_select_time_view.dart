import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/stars_widget.dart';
import '../../../widgets/appbar_widget.dart';
import '../controllers/doctor_select_time_controller.dart';

class DoctorSelectTimeView extends GetView<DoctorSelectTimeController> {
  const DoctorSelectTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/image/background.png'),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: const [
            SizedBox(height: 100, child: AppbarWidget('Select Time')),
            SizedBox(child: SelectedDoctorWidget()),
            SizedBox(height: 20),
            SizedBox(
                height: 54, width: double.infinity, child: DayTabsWidget()),
            SizedBox(height: 20),
            Center(child: TodayTimeWidget()),
            SizedBox(height: 20),
            Center(child: NoSlotsAvailableWidget()),
            AvailbleSlotsWidget(),
          ],
        ),
      ),
    );
  }
}

class AvailbleSlotsWidget extends StatelessWidget {
  const AvailbleSlotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AfternoonSlotsWidget(),
        EveningSlotsWidget(),
      ],
    );
  }
}

class EveningSlotsWidget extends StatelessWidget {
  const EveningSlotsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 335,
      height: 123,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Evening 5 slots',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 9,
          ),
          Expanded(
            child: GridView.count(
              //physics: BouncingScrollPhysics(),
              childAspectRatio: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 4,
              children: [
                ...List.generate(
                  5,
                  (index) {
                    return TimeSlotWidget(
                      colorButton:
                          Theme.of(context).colorScheme.primaryContainer,
                      colorText: Theme.of(context).colorScheme.primary,
                    );
                  },
                ),
                const TimeSlotWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AfternoonSlotsWidget extends StatelessWidget {
  const AfternoonSlotsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 125,
      margin: const EdgeInsets.all(20),
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Afternoon 7 slots',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 11,
          ),
          Expanded(
            child: GridView.count(
              childAspectRatio: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 4,
              children: [
                ...List.generate(
                  6,
                  (index) {
                    return TimeSlotWidget(
                      colorButton:
                          Theme.of(context).colorScheme.primaryContainer,
                      colorText: Theme.of(context).colorScheme.primary,
                    );
                  },
                ),
                const TimeSlotWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimeSlotWidget extends StatelessWidget {
  const TimeSlotWidget(
      {super.key, this.colorButton, this.colorText, this.rootDelegate});
  final Color? colorButton;
  final Color? colorText;
  final Function? rootDelegate;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (colorButton == null) {}
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(11)),
        fixedSize: MaterialStateProperty.all(const Size(76, 40)),
        backgroundColor: MaterialStateProperty.all(colorButton),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
      ),
      child: Text(
        '1:00 PM',
        style: TextStyle(color: colorText),
      ),
    );
  }
}

class NoSlotsAvailableWidget extends StatelessWidget {
  const NoSlotsAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 306,
      height: 193,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'No slots available',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(306, 54),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              //backgroundColor: Theme.of(context).colorScheme.primary
            ),
            child: const Text('Next availability on wed, 24 Feb'),
            //TODO : style
          ),
          Text(
            'OR',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(306, 54),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    side: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1))),
            child: Text(
              'Contact Clinic',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          )
        ],
      ),
    );
  }
}

class TodayTimeWidget extends StatelessWidget {
  const TodayTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Today, 23 Feb', style: Theme.of(context).textTheme.titleLarge),
        ],
      ),
    );
  }
}

class DayTabsWidget extends StatelessWidget {
  const DayTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SelectTimeBtnWidget(
              colorText: Theme.of(context).colorScheme.onPrimary,
            ));
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Padding(
            padding: EdgeInsets.only(left: 15),
            child: SelectTimeBtnWidget(backgroundColor: Colors.transparent));
      },
      itemCount: 20,
    );
  }
}

class SelectTimeBtnWidget extends StatelessWidget {
  const SelectTimeBtnWidget(
      {super.key, this.backgroundColor, this.borderSideColor, this.colorText});
  final Color? backgroundColor;

  final Color? borderSideColor;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(4, 10, 4, 4),
          backgroundColor: backgroundColor,
          shadowColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(4),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              'Today, 23 Feb',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: colorText),
            ),
          ),
          Text(
            'No slots available',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: colorText),
          ),
        ],
      ),
    );
  }
}

class SelectedDoctorWidget extends StatelessWidget {
  const SelectedDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 335,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: Theme.of(context).colorScheme.onPrimary),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('lib/assets/image/Ductor.png'),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Shruti Kedia',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text('Upasana Dental Clinic, salt lake',
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        const StarsWidget(15),
                      ],
                    ),
                    Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
