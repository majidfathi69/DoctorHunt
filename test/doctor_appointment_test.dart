import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/doctor_appointment/views/doctor_appointment_view.dart';
import 'package:doctor_hunt/app/modules/doctor_appointment/views/doctor_appointmentTime_view.dart';
import 'package:doctor_hunt/app/modules/doctor_appointment/views/thank_you_view.dart';
import 'package:doctor_hunt/app/widgets/appbar_widget.dart';

void main() {
  testWidgets('13_Doctor appointment screen-01', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: DoctorAppointmentView()));
    expect(find.byType(AppbarWidget), findsOneWidget);

    expect(find.byType(DoctorDetailsWidget), findsOneWidget);

    expect(find.byType(AppointmentForWidget), findsOneWidget);

    expect(find.byType(WhoPatientWidget), findsOneWidget);

    expect(find.byType(NextButtonWidget), findsOneWidget);

    //AppbarWidget
    expect(
      find.descendant(
        of: find.byType(AppbarWidget),
        matching: find.text('Appointment'),
      ),
      findsOneWidget,
    );

    //AppointmentForWidget
    expect(
      find.descendant(
        of: find.byType(AppointmentForWidget),
        matching: find.text('Appointment For'),
      ),
      findsOneWidget,
    );

    //WhoPatientWidget
    expect(
      find.descendant(
        of: find.byType(WhoPatientWidget),
        matching: find.text('Who is this patient?'),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(WhoPatientWidget),
        matching: find.byType(AddPatientWidget),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(WhoPatientWidget),
        matching: find.byType(PatientWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    //NextButtonWidget
    expect(
      find.descendant(
        of: find.byType(NextButtonWidget),
        matching: find.text('Next'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('14_Doctor appointment screen-02', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: AppointmentTimeView()));

    expect(find.byType(SheduleWidget), findsOneWidget);

    expect(find.byType(TimeWidget), findsOneWidget);

    //SheduleWidget

    //TimeWidget
    //AvailableTimesWidget
    expect(
      find.descendant(
        of: find.byType(TimeWidget),
        matching: find.byType(AvailableTimesWidget),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(AvailableTimesWidget),
        matching: find.text('Available Time'),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(AvailableTimesWidget),
        matching: find.byType(AvailableTimeWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    //TimeWidget
    //RemindersWidget
    expect(
      find.descendant(
        of: find.byType(TimeWidget),
        matching: find.byType(RemindersWidget),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(RemindersWidget),
        matching: find.text('Reminder Me Before'),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.byType(RemindersWidget),
        matching: find.byType(ReminderWidget),
      ),
      findsAtLeastNWidgets(0),
    );
  });

  testWidgets('15_Thank you screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ThankYouView()));

    expect(find.byType(SuccessfulIconWidget), findsOneWidget);

    expect(find.byType(SuccessfulResponseWidget), findsOneWidget);

    expect(find.byType(SuccessfulActionsWidget), findsOneWidget);

    //SuccessfulResponseWidget
    expect(find.text('Thank You !'), SuccessfulResponseWidget);
    expect(find.text('Your Appointment Successful'), SuccessfulResponseWidget);

    //SuccessfulActionsWidget
    expect(find.text('Done'), SuccessfulActionsWidget);
    expect(find.text('Edit your appointment'), SuccessfulActionsWidget);
  });
}
