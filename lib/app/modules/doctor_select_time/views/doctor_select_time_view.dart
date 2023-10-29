import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/doctor_select_time_controller.dart';

class DoctorSelectTimeView extends GetView<DoctorSelectTimeController> {
  const DoctorSelectTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SelectedDoctorWidget(),
          SizedBox(height: 24),
          DayTabsWidget(),
          SizedBox(height: 18),
          Center(child: TodayTimeWidget()),
          SizedBox(height: 17),
          Center(child: NoSlotsAvailableWidget()),
          AvailbleSlotsWidget(),
        ],
      ),
      appBar: AppBar(),
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
              //TODO: size textButton
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
  const TimeSlotWidget({super.key, this.colorButton, this.colorText});
  final Color? colorButton;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
        //TODO : unkowe fontSize
      ),
    );
  }
}

class NoSlotsAvailableWidget extends StatelessWidget {
  const NoSlotsAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 306,
      height: 152,
      child: Column(
        children: [
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
          Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 10),
            child: Text(
              'OR',
              style: Theme.of(context).textTheme.bodyMedium,
            ), // TODO unknown color
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
              //TODO : font
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
      height: 64,
      width: 135,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Today, 23 Feb', style: Theme.of(context).textTheme.titleLarge),
          //TODO: tiileLarge
          const SizedBox(
            height: 16,
          ),
          Text(
            'No slots available',
            style: Theme.of(context).textTheme.bodyMedium,
          ), //TODO :unknown color
        ],
      ),
    );
  }
}

class DayTabsWidget extends StatelessWidget {
  const DayTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 54,
      width: double.infinity,
      child: SelectTimeBtnWidget(),
    );
  }
}

class SelectTimeBtnWidget extends StatelessWidget {
  const SelectTimeBtnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(4, 10, 4, 4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              //backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    'Tomorrow, 24 Feb',
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                ),
                Text(
                  '9 slots available',
                  style: Theme.of(context).primaryTextTheme.bodySmall,
                ),
              ],
            ),
          ), // TODO: sec minimon size
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(4, 10, 4, 4),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimary,
                      style: BorderStyle.solid,
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
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    'No slots available',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ));
      },
      itemCount: 20,
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
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 15, 9.91),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('lib/assets/image/Ductor.png'),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 2,
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (int i = 0; i < 4; i++)
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color:
                                Theme.of(context).colorScheme.tertiaryContainer,
                          ),
                          //TODO : unknow color
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
