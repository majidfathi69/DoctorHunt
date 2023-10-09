import 'package:flutter/material.dart';

//Forgot_Pass_Tab_Widget
class ForgotPassTabWidget extends StatelessWidget {
  const ForgotPassTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        child: const Column(
          children: [
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 290,
                child: HeadlineWidget(
                  title: null,
                  text: null,
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 138,
                  child: ForgotPassFormWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeadlineWidget extends StatelessWidget {
  final String? title;
  final String? text;

  const HeadlineWidget({super.key, required this.text, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}

class ForgotPassFormWidget extends StatelessWidget {
  const ForgotPassFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('data');
  }
}

//Enter_Digits_Tab_Widget
class EnterDigitsTabWidget extends StatelessWidget {
  const EnterDigitsTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        child: const Column(
          children: [
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                  width: 290,
                  child: HeadlineWidget(
                    title: null,
                    text: null,
                  )),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                child: EnterDigitsFormWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EnterDigitsFormWidget extends StatelessWidget {
  const EnterDigitsFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('data');
  }
}

//reset_password_tab
class ResetPasswordTabWidget extends StatelessWidget {
  const ResetPasswordTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        child: const Column(
          children: [
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                  width: 315,
                  child: HeadlineWidget(
                    title: null,
                    text: null,
                  )),
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 335,
                child: ResetPasswordFormWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ResetPasswordFormWidget extends StatelessWidget {
  const ResetPasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('data');
  }
}
