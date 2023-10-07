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
          children: [
            const SizedBox(height: 150),
            const Center(child: SizedBox(width: 285, child: HeadlineWidget())),
            const SizedBox(height: 75),
            const Center(child: SizedBox(width: 335, child: SignupTabWidget())),
            const SizedBox(height: 35),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text('Have an account? Log in',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary)),
              ),
            )
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

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({super.key});

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  var _isChecked = false;
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
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Name',
            ),
          ),
        ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 16,
              height: 16,
              child: Checkbox(
                value: _isChecked,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
            ),
            //SizedBox(width: 11),
            Text('I agree with the Terms of Service & Privacy Policy',
                style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
        SizedBox(
          width: 295,
          height: 54,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            child: const Text('Sign up'),
          ),
        )
      ],
    );
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
        Text(
          'Join us to start searching',
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
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
