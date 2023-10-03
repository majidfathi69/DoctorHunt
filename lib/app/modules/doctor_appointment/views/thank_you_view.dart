import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 26,
            ),
            Container(
              width: 156,
              height: 156,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(1000)),
              child: Icon(CupertinoIcons.hand_thumbsup_fill,
                  size: 90, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 172,
              child: Column(
                children: [
                  Text(
                    'Thank You !',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    'Your Appointment Successful',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 265,
                    height: 67,
                    child: Text(
                        'You booked an appointment with Dr. Pediatrician Purpieson on February 21, at 02:00 PM',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            const SizedBox(height: 29),
            SizedBox(
              width: 295,
              height: 54,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  )),
                  child: const Text('Done')),
            ),
            const SizedBox(height: 18),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: const Text('Edit your appointment'),
            )
          ],
        ),
      ),
    );
  }
}
