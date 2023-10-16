import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/home/views/home_view.dart';

void main() {
  testWidgets('05_Home screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
    expect(find.byType(ProfileWidget), findsOneWidget);

    expect(find.byType(SearchTextField), findsOneWidget);

    expect(find.byType(LiveDoctorsWidget), findsOneWidget);

    expect(find.byType(DoctorSpecialtiesWidget), findsOneWidget);

    expect(find.byType(PopularDoctorsWidget), findsOneWidget);

    expect(find.byType(FeatureDoctorsWidget), findsOneWidget);

    //ProfileWidget
    expect(
      find.descendant(
          of: find.byType(ProfileWidget),
          matching: find.byType(ProfileImageWidget)),
      findsNWidgets(2),
    );

    expect(
      find.descendant(
          of: find.byType(ProfileWidget),
          matching: find.byType(ProfileImageWidget)),
      findsOneWidget,
    );

    //LiveDoctorsWidget
    expect(
      find.descendant(
        of: find.byType(LiveDoctorsWidget),
        matching: find.text('Live Doctors'),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(LiveDoctorsWidget),
        matching: find.byType(LiveDoctorWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    //DoctorSpecialtiesWidget
    expect(
      find.descendant(
        of: find.byType(DoctorSpecialtiesWidget),
        matching: find.byType(DoctorSpecialtyWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    //PopularDoctorsWidget
    expect(
      find.descendant(
        of: find.byType(PopularDoctorsWidget),
        matching: find.byType(HeadlineWidget),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(PopularDoctorsWidget),
        matching: find.text('Popular Doctor'),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(PopularDoctorsWidget),
        matching: find.byType(PopularDoctorWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    //FeatureDoctorsWidget
    expect(
      find.descendant(
        of: find.byType(FeatureDoctorsWidget),
        matching: find.byType(HeadlineWidget),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(FeatureDoctorsWidget),
        matching: find.text('Feature Doctor'),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(FeatureDoctorsWidget),
        matching: find.byType(FeatureDoctorWidget),
      ),
      findsAtLeastNWidgets(0),
    );
  });
}
