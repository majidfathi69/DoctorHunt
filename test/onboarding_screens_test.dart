import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/onBoarding/onboarding_screen.dart';

void main() {
  
  testWidgets('04_Onboarding screen-03', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: OnboardingScreenThree()));

    expect(find.byType(HeadlineImageWidget), findsOneWidget);

    expect(find.byType(HeadlineWidget), findsOneWidget);

    expect(find.byType(SkipStartedButtonsWidget), findsOneWidget);

    // Find the Text widget inside the HeadlineWidget
    expect(
      find.descendant(
          of: find.byType(HeadlineWidget), matching: find.byType(Text)),
      findsAtLeastNWidgets(1),
    );

    expect(
      find.descendant(
          of: find.byType(SkipStartedWidgetButtons),
          matching: find.descendant(
            of: find.byType(ElevatedButton),
            matching: find.text('Get Started'),
          )),
      findsOneWidget,
    );

    expect(
      find.descendant(
          of: find.byType(SkipStartedWidgetButtons),
          matching: find.descendant(
            of: find.byType(InkWell),
            matching: find.text('Skip'),
          )),
      findsOneWidget,
    );
  });
  
  testWidgets('03_Onboarding screen-02', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: OnboardingScreenTwo()));

    expect(find.byType(HeadlineImageWidget), findsOneWidget);

    expect(find.byType(HeadlineWidget), findsOneWidget);

    expect(find.byType(SkipStartedButtonsWidget), findsOneWidget);

    // Find the Text widget inside the HeadlineWidget
    expect(
      find.descendant(
          of: find.byType(HeadlineWidget), matching: find.byType(Text)),
      findsAtLeastNWidgets(1),
    );

    expect(
      find.descendant(
          of: find.byType(SkipStartedWidgetButtons),
          matching: find.descendant(
            of: find.byType(ElevatedButton),
            matching: find.text('Get Started'),
          )),
      findsOneWidget,
    );

    expect(
      find.descendant(
          of: find.byType(SkipStartedWidgetButtons),
          matching: find.descendant(
            of: find.byType(InkWell),
            matching: find.text('Skip'),
          )),
      findsOneWidget,
    );
  });

  testWidgets('02_Onboarding screen-01', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: OnboardingScreenOne()));

    expect(find.byType(HeadlineImageWidget), findsOneWidget);

    expect(find.byType(HeadlineWidget), findsOneWidget);

    expect(find.byType(SkipStartedButtonsWidget), findsOneWidget);

    // Find the Text widget inside the HeadlineWidget
    expect(
      find.descendant(
          of: find.byType(HeadlineWidget), matching: find.byType(Text)),
      findsAtLeastNWidgets(1),
    );

    expect(
      find.descendant(
          of: find.byType(SkipStartedWidgetButtons),
          matching: find.descendant(
            of: find.byType(ElevatedButton),
            matching: find.text('Get Started'),
          )),
      findsOneWidget,
    ); 

    expect(
      find.descendant(
          of: find.byType(SkipStartedWidgetButtons),
          matching: find.descendant(
            of: find.byType(InkWell),
            matching: find.text('Skip'),
          )),
      findsOneWidget,
    );
  });
}
