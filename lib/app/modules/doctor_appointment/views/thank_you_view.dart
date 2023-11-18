import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 520,
          width: 335,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SuccessfulIconWidget(),
              SuccessfulResponseWidget(),
              SuccessfulActionsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class SuccessfulActionsWidget extends StatelessWidget {
  const SuccessfulActionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91,
      width: 295,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(295, 54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                )),
            child: const Text('Done')),
        InkWell(
          onTap: () {
            Get.back();
          },
          child: const Text('Edit your appointment'),
        )
      ]),
    );
  }
}

class SuccessfulResponseWidget extends StatelessWidget {
  const SuccessfulResponseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 177,
      //width: 290,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Thank You !',
            style: Theme.of(context).textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            'Your Appointment Successful',
            style: Theme.of(context).textTheme.titleLarge,
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
    );
  }
}

class SuccessfulIconWidget extends StatelessWidget {
  const SuccessfulIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 156,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(1000)),
      child: Icon(CupertinoIcons.hand_thumbsup_fill,
          size: 90, color: Theme.of(context).colorScheme.primary),
    );
  }
}
