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
          children: [
            const SizedBox(height: 150),
            const Center(child: SizedBox(width: 285, child: HeadlineWidget())),
            const SizedBox(height: 55),
            const Center(child: SizedBox(width: 339, child: LoginTabWidget())),
            const SizedBox(height: 35),
            SizedBox(
              height: 64,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgor password',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Don’t have an account? Join us',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              ),
            )
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

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
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
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Email',
            ),
          ),
        ),
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
              hintText: 'Password',
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

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome back',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 10),
        Text(
          'You can search c ourse, apply course and find scholarship for abroad studies',
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
