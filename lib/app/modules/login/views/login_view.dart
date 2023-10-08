import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            SizedBox(height: 150),
            Center(child: SizedBox(width: 285, child: HeadlineWidget())),
            SizedBox(height: 55),
            Center(child: SizedBox(width: 339, child: LoginTabWidget())),
            SizedBox(height: 35),
            SizedBox(height: 64)
          ],
        ),
      ),
    );
  }
}

class LoginTabWidget extends StatelessWidget {
  const LoginTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(width: 339, height: 53, child: SocialmediasWidget()),
        SizedBox(height: 30),
        SizedBox(height: 202, child: LoginFormWidget()),
      ],
    );
  }
}

class SocialmediasWidget extends StatelessWidget {
  const SocialmediasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('data');
  }
}

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('data');
  }
}

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('data');
  }
}
