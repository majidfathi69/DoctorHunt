import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/login/views/forgot_password.dart';

void main() {
  testWidgets('forgot password', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ForgotPassTabWidget()));

    // Find the HeadlineWidget by type
    expect(find.byType(HeadlineWidget), findsOneWidget);

    // Find the ForgotFormWidget by type
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
