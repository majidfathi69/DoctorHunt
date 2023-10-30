import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/doctor_details/views/doctor_details_view.dart';
import 'package:doctor_hunt/app/widgets/appbar_widget.dart';

void main() {
  testWidgets('12_Doctor details screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: DoctorDetailsView()));
    expect(find.byType(AppbarWidget), findsOneWidget);

    expect(find.byType(BookDoctorWidget), findsOneWidget);

    expect(find.byType(DoctorStatesWidget), findsOneWidget);

    expect(find.byType(ServicesDescription), findsOneWidget);

    expect(find.byType(MapDistanceWidget), findsOneWidget);

    //AppbarWidget
    expect(
      find.descendant(
        of: find.byType(AppbarWidget),
        matching: find.text('Doctor Details'),
      ),
      findsOneWidget,
    );

    //BookDoctorWidget
    expect(
      find.descendant(
        of: find.byType(BookDoctorWidget),
        matching: find.descendant(
          of: find.byType(ElevatedButton),
          matching: find.text('Book Now'),
        ),
      ),
      findsOneWidget,
    );

    //DoctorStatesWidget
    expect(
      find.descendant(
        of: find.byType(DoctorStatesWidget),
        matching: find.byKey(DoctorStateWidget),
      ),
      findsNWidgets(3),
    );

    expect(
      find.descendant(
        of: find.byType(DoctorStatesWidget),
        matching: find.descendant(
          of: find.byType(DoctorStateWidget),
          matching: find.text('Runing'),
        ),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(DoctorStatesWidget),
        matching: find.descendant(
          of: find.byType(DoctorStateWidget),
          matching: find.text('Ongoing'),
        ),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(DoctorStatesWidget),
        matching: find.descendant(
          of: find.byType(DoctorStateWidget),
          matching: find.text('Patient'),
        ),
      ),
      findsOneWidget,
    );

    //ServicesDescription
    expect(
      find.descendant(
        of: find.byType(ServicesDescription),
        matching: find.text('Services'),
      ),
      findsOneWidget,
    );
  });
}
