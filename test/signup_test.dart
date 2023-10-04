import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/signup/views/signup_view.dart';

void main() {
  testWidgets('signup', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SignupView()));

    // Find the HeadlineWidget by type
    expect(find.byType(HeadlineWidget), findsOneWidget);

    // Find the SignupTabWidget by type
    expect(find.byType(SignupTabWidget), findsOneWidget);

    // Find the Text widget inside the HeadlineWidget
    expect(
      find.descendant(
          of: find.byType(HeadlineWidget), matching: find.byType(Text)),
      findsOneWidget,
    );

    // Find the SocialmediasWidget widget inside the SignupTabWidget
    expect(
      find.descendant(
          of: find.byType(SignupTabWidget),
          matching: find.byType(SocialmediasWidget)),
      findsOneWidget,
    );

    // Find the SignupFormWidget widget inside the SignupTabWidget
    expect(
      find.descendant(
          of: find.byType(SignupTabWidget),
          matching: find.byType(SignupFormWidget)),
      findsOneWidget,
    );

    expect(
      find.descendant(
          of: find.byType(SocialmediasWidget), matching: find.text('Google')),
      findsOneWidget,
    );

    expect(
      find.descendant(
          of: find.byType(SocialmediasWidget), matching: find.text('Facebook')),
      findsOneWidget,
    );

    expect(
      find.descendant(
          of: find.byType(SignupFormWidget),
          matching: find.byType(TextField)),
      findsNWidgets(3),
    );

    expect(
      find.descendant(
          of: find.byType(SignupFormWidget),
          matching:
              find.text('I agree with the Terms of Service & Privacy Policy')),
      findsOneWidget,
    );

    expect(
      find.descendant(
          of: find.byType(SignupFormWidget),
          matching: find.descendant(
            of: find.byType(ElevatedButton),
            matching: find.text('Sign up'),
          )),
      findsOneWidget,
    );

    expect(find.text('Have an account? Log in'), findsOneWidget);
  });
}
