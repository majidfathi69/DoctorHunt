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
      color: Colors.teal[100],
      child: const Column(
        children: [
          SizedBox(height: 35),
          AvailableTime(),
          SizedBox(height: 38),
          Reminder(),
          SizedBox(height: 20),
          // TODO: implement the button
        ],
      ),
    );
  }
}

class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      color: Colors.amber,
    );
  }
}

class AvailableTime extends StatelessWidget {
  const AvailableTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      color: Colors.amber,
    );
  }
}
