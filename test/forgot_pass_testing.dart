import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/login/views/forgot_password.dart';

void main() {
  
  testWidgets('reset password tab', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ResetPasswordTabWidget()));

    // Find the HeadlineWidget by type
    expect(find.byType(HeadlineWidget), findsOneWidget);

    // Find the ResetPasswordFormWidget by type
    expect(find.byType(ResetPasswordFormWidget), findsOneWidget);

    // Find the Text widget inside the HeadlineWidget
    expect(
      find.descendant(
          of: find.byType(HeadlineWidget), matching: find.byType(Text)),
      findsAtLeastNWidgets(1),
    );

    expect(
      find.descendant(
          of: find.byType(ResetPasswordFormWidget),
          matching: find.byType(TextField)),
      findsNWidgets(2),
    );

    expect(
      find.descendant(
          of: find.byType(ResetPasswordFormWidget),
          matching: find.descendant(
            of: find.byType(ElevatedButton),
            matching: find.text('Update Password'),
          )),
      findsOneWidget,
    );
  });

  testWidgets('enter digits tab', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: EnterDigitsTabWidget()));

    // Find the HeadlineWidget by type
    expect(find.byType(HeadlineWidget), findsOneWidget);

    // Find the EnterDigitsFormWidget by type
    expect(find.byType(EnterDigitsFormWidget), findsOneWidget);

    // Find the Text widget inside the HeadlineWidget
    expect(
      find.descendant(
          of: find.byType(HeadlineWidget), matching: find.byType(Text)),
      findsAtLeastNWidgets(1),
    );

    expect(
      find.descendant(
          of: find.byType(EnterDigitsFormWidget),
          matching: find.byType(TextField)),
      findsNWidgets(4),
    );

    expect(
      find.descendant(
          of: find.byType(EnterDigitsFormWidget),
          matching: find.descendant(
            of: find.byType(ElevatedButton),
            matching: find.text('Continue'),
          )),
      findsOneWidget,
    );
  });

  testWidgets('forgot password tab', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ForgotPassTabWidget()));

    // Find the HeadlineWidget by type
    expect(find.byType(HeadlineWidget), findsOneWidget);

    // Find the ForgotPassFormWidget by type
    expect(find.byType(ForgotPassFormWidget), findsOneWidget);

    // Find the Text widget inside the HeadlineWidget
    expect(
      find.descendant(
          of: find.byType(HeadlineWidget), matching: find.byType(Text)),
      findsAtLeastNWidgets(1),
    );

    expect(
      find.descendant(
          of: find.byType(ForgotPassFormWidget),
          matching: find.byType(TextField)),
      findsOneWidget,
    );

    expect(
      find.descendant(
          of: find.byType(ForgotPassFormWidget),
          matching: find.descendant(
            of: find.byType(ElevatedButton),
            matching: find.text('Continue'),
          )),
      findsOneWidget,
    );
  });
}
