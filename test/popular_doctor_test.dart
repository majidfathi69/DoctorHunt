import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/popular_doctor/views/popular_doctor_view.dart';
import 'package:doctor_hunt/app/widgets/appbar_widget.dart';
import 'package:doctor_hunt/app/widgets/headline_widget.dart';


void main() {
  testWidgets('10_Poplular doctor screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: PopularDoctorView()));
    expect(find.byType(AppbarWidget), findsOneWidget);

    expect(find.byType(PopularDoctorsWidget), findsOneWidget);

    expect(find.byType(CategoryWidget), findsOneWidget);

    //AppbarWidget
    expect(
      find.descendant(
        of: find.byType(AppbarWidget),
        matching: find.text('Popular Doctor'),
      ),
      findsOneWidget,
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
        matching: find.byType(PopularDoctorWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    //CategoryWidget
    expect(
      find.descendant(
        of: find.byType(CategoryWidget),
        matching: find.text('Category'),
      ),
      findsOneWidget,
    );
    
    expect(
      find.descendant(
        of: find.byType(CategoryWidget),
        matching: find.byType(CategoryDoctorWidget),
      ),
      findsAtLeastNWidgets(0),
    );

  });
}
