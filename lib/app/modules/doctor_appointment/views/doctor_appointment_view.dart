import 'package:flutter/material.dart';

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
            SizedBox(height: 100), // TODO: AppBar
            DoctorDetails(),
            SizedBox(height: 30),
            AppointmentFor(),
            SizedBox(height: 30),
            WhoIsPatient(),
            SizedBox(height: 23),
            Button(),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ElevatedButton(
        onPressed: () {},
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

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: DoctorDetail(),
    );
  }
}

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(8)),
      height: 123,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('lib/assets/image/Appointment.png'),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
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
                        Icons.favorite,
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
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
                        ],
                      ),
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

class AppointmentFor extends StatelessWidget {
  const AppointmentFor({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 165,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Appointment For',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 19,
            ),
            SizedBox(
              height: 54,
              child: TextField(
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
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 54,
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: 'Contact Number'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WhoIsPatient extends StatelessWidget {
  const WhoIsPatient({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 190,
        width: 430,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Who is this patient?',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 19,
            ),
            Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: ButtonWhoIsPatient(),
                        );
                      } else {
                        return Container();
                      }
                    },
                    separatorBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ImageWhoIsPatient(),
                      );
                    },
                    itemCount: 10))
          ],
        ),
      ),
    );
  }
}

class ImageWhoIsPatient extends StatelessWidget {
  const ImageWhoIsPatient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 100,
        height: 151,
        decoration: BoxDecoration(
          //color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            Image.asset('lib/assets/image/Patient.png'),
            const SizedBox(
              height: 6,
            ),
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

class ButtonWhoIsPatient extends StatelessWidget {
  const ButtonWhoIsPatient({
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
            TextButton(
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  size: 50,
                )),
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
