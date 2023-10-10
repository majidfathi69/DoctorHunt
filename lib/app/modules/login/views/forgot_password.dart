import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Forgot_Pass_Tab_Widget
class ForgotPassTabWidget extends StatelessWidget {
  const ForgotPassTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 290,
                child: HeadlineWidget(
                  title: 'Forgot password',
                  text:
                      'Enter your email for the verification proccesss, we will send 4 digits code to your email.',
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
  final String title;
  final String text;

  const HeadlineWidget({super.key, required this.text, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

class ForgotPassFormWidget extends StatelessWidget {
  const ForgotPassFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 54,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      width: 1, color: Theme.of(context).colorScheme.primary),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Email'),
          ),
        ),
        SizedBox(
            width: 295,
            height: 54,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text('Continue')))
      ],
    );
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                  width: 290,
                  child: HeadlineWidget(
                    title: 'Enter 4 Digits Code',
                    text:
                        'Enter the 4 digits code that you received on your email.',
                  )),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Center(child: EnterDigitsFormWidget()),
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
    return Column(
      children: [
        SizedBox(
          width: 295,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 4; i++)
                SizedBox(
                  width: 54,
                  height: 54,
                  child: TextFormField(
                    onSaved: (newValue) {},
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                width: 1,
                                color: Theme.of(context).colorScheme.primary)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
            width: 295,
            height: 54,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text('Continue')))
      ],
    );
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                  width: 315,
                  child: HeadlineWidget(
                    title: 'Reset Password',
                    text:
                        'Set the new password for your account so you can login and access all the features.',
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

class ResetPasswordFormWidget extends StatefulWidget {
  const ResetPasswordFormWidget({super.key});

  @override
  State<ResetPasswordFormWidget> createState() =>
      _ResetPasswordFormWidgetState();
}

class _ResetPasswordFormWidgetState extends State<ResetPasswordFormWidget> {
  var _isChecked = true;
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 54,
          child: TextField(
            keyboardType: TextInputType.none,
            obscureText: _isChecked,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'New Password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isChecked = !_isChecked;
                  });
                },
                icon: _isChecked
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 54,
          child: TextField(
            keyboardType: TextInputType.none,
            obscureText: _obscureText,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Re-enter Password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: _obscureText
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: 295,
          height: 54,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            child: const Text('Login'),
          ),
        )
      ],
    );
  }
}
