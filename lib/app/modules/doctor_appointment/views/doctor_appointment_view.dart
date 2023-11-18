import 'package:doctor_hunt/app/widgets/appbar_widget.dart';
import 'package:doctor_hunt/app/widgets/stars_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'doctor_appointmentTime_view.dart';


class DoctorAppointmentView extends StatelessWidget {
  const DoctorAppointmentView({super.key});

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
          children: const [
            SizedBox(
              height: 100,
              child: AppbarWidget('Appointment'),
            ),
            DoctorDetailsWidget(),
            SizedBox(height: 30),
            AppointmentForWidget(),
            SizedBox(height: 30),
            WhoPatientWidget(),
            SizedBox(height: 20),
            NextButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ElevatedButton(
        onPressed: () {
          Get.to(const AppointmentTimeView());
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(295, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          'Next',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}

class DoctorDetailsWidget extends StatelessWidget {
  const DoctorDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(8)),
        height: 123,
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('lib/assets/image/Appointment.png'),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.favorite_outline_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
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
                                text: '\$',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary)),
                            TextSpan(
                              text: '28.00/hr',
                              style: Theme.of(context).textTheme.bodyLarge,
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
      ),
    );
  }
}

class AppointmentForWidget extends StatelessWidget {
  const AppointmentForWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Appointment For',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 1),
                borderRadius: BorderRadius.circular(6),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              hintText: 'Patient Name',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                hintText: 'Contact Number'),
          ),
        ],
      ),
    );
  }
}

class WhoPatientWidget extends StatelessWidget {
  const WhoPatientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Who is this patient?',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: AddPatientWidget(),
                    );
                  } else {
                    return Container();
                  }
                },
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: PatientWidget(),
                  );
                },
                itemCount: 10),
          )
        ],
      ),
    );
  }
}

class PatientWidget extends StatelessWidget {
  const PatientWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 100,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('lib/assets/image/Patient.png'),
            Text(
              'My child',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}

class AddPatientWidget extends StatelessWidget {
  const AddPatientWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.topCenter,
      child: Container(
        width: 100,
        height: 125,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add,
                size: 50, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 5),
            Text(
              'Add',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            )
          ],
        ),
      ),
    );
  }
}
