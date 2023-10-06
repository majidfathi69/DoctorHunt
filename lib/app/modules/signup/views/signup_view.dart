import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/image/background.png'),
                fit: BoxFit.cover)),
        child: ListView(
          children: const [
            SizedBox(height: 150),
            Center(child: SizedBox(width: 285, child: HeadlineWidget())),
            SizedBox(height: 75),
            Center(child: SizedBox(width: 335, child: SignupTabWidget())),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}

class SignupTabWidget extends StatelessWidget {
  const SignupTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 339,
          height: 53,
          child: SocialmediasWidget(),
        ),
        SizedBox(height: 30),
        SizedBox(
          height: 313,
          child: SignupFormWidget(),
        )
      ],
    );
  }
}

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('data');
  }
}

class SocialmediasWidget extends StatelessWidget {
  const SocialmediasWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 53,
          width: 159.03,
          child: TextButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/image/google.png'),
                const SizedBox(width: 15),
                const Text('Google')
              ],
            ),
          ),
        ),
        SizedBox(
          height: 53,
          width: 159.03,
          child: TextButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/assets/image/facebook.png'),
                  const SizedBox(width: 15),
                  const Text('Facebook')
                ],
              )),
        ),
      ],
    );
  }
}

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Join us to startsearching',
            style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 10),
        Text(
          'You can search c ourse, apply course and find scholarship for abroad studies',
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
