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
    throw UnimplementedError();
  }
}

class SocialmediasWidget extends StatelessWidget {
  const SocialmediasWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
