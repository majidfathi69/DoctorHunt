import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/login/views/login_view.dart';


void main() {
  testWidgets('login', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginView()));

    // Find the HeadlineWidget by type
    expect(find.byType(HeadlineWidget), findsOneWidget);

    // Find the LoginTabWidget by type
    expect(find.byType(LoginTabWidget), findsOneWidget);

    // Find the Text widget inside the HeadlineWidget
    expect(
      find.descendant(
          of: find.byType(HeadlineWidget), matching: find.byType(Text)),
      findsAtLeastNWidgets(1),
    );

    // Find the SocialmediasWidget widget inside the LoginTabWidget
    expect(
      find.descendant(
          of: find.byType(LoginTabWidget),
          matching: find.byType(SocialmediasWidget)),
      findsOneWidget,
    );

    // Find the LoginFormWidget widget inside the LoginTabWidget
    expect(
      find.descendant(
          of: find.byType(LoginTabWidget),
          matching: find.byType(LoginFormWidget)),
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
          of: find.byType(LoginFormWidget),
          matching: find.byType(TextField)),
      findsNWidgets(2),
    );

    expect(
      find.descendant(
          of: find.byType(LoginFormWidget),
          matching: find.descendant(
            of: find.byType(ElevatedButton),
            matching: find.text('Login'),
          )),
      findsOneWidget,
    );

    expect(find.text('Forgor password'), findsOneWidget);
    expect(find.text('Don’t have an account? Join us'), findsOneWidget);
  });
}
