import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/doctor_select_time/views/doctor_select_time_view.dart';
import 'package:doctor_hunt/app/widgets/appbar_widget.dart';
import 'package:doctor_hunt/app/widgets/stars_widget.dart';

void main() {
  testWidgets('09_Doctor Select Time screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: DoctorSelectTimeView()));
    expect(find.byType(AppbarWidget), findsOneWidget);

    expect(find.byType(SelectedDoctorWidget), findsOneWidget);

    expect(find.byType(DayTabsWidget), findsOneWidget);

    expect(find.byType(TodayTimeWidget), findsOneWidget);

    expect(find.byType(NoSlotsAvailableWidget), findsOneWidget);

    expect(find.byType(AvailbleSlotsWidget), findsOneWidget);

    //AppbarWidget
    expect(find.text('Select Time'), findsOneWidget);

    //SelectedDoctorWidget
    expect(
      find.descendant(
        of: find.byType(SelectedDoctorWidget),
        matching: find.byType(StarsWidget),
      ),
      findsOneWidget,
    );

    //DayTabsWidget
    expect(
      find.descendant(
        of: find.byType(DayTabsWidget),
        matching: find.byType(SelectTimeBtnWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    //NoSlotsAvailableWidget
    expect(
      find.descendant(
        of: find.byType(NoSlotsAvailableWidget),
        matching: find.text('No slots available'),
      ),
      findsOneWidget,
    );

    //AvailbleSlotsWidget
    await tester.dragUntilVisible(
      find.byType(AvailbleSlotsWidget), // what you want to find
      find.byType(DoctorSelectTimeView), // widget you want to scroll
      const Offset(0, -250), // delta to move
    );

    expect(
      find.descendant(
        of: find.byType(AvailbleSlotsWidget),
        matching: find.byType(AfternoonSlotsWidget),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(AvailbleSlotsWidget),
        matching: find.byType(EveningSlotsWidget),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(AfternoonSlotsWidget),
        matching: find.byType(TimeSlotWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    expect(
      find.descendant(
        of: find.byType(EveningSlotsWidget),
        matching: find.byType(TimeSlotWidget),
      ),
      findsAtLeastNWidgets(0),
    );
  });
}
