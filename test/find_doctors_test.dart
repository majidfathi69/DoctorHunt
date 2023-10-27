import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/find_doctors/views/find_doctors_screen.dart';
import 'package:doctor_hunt/app/widgets/appbar_widget.dart';
import 'package:doctor_hunt/app/widgets/search_text_field.dart';

void main() {
  testWidgets('07_Find doctors screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: FindDoctorsView()));
    expect(find.byType(AppbarWidget), findsOneWidget);

    expect(find.byType(SearchTextField), findsOneWidget);

    expect(find.byType(SearchResualtsWidget), findsOneWidget);

    //AppbarWidget
    expect(find.text('Find Doctors'), findsOneWidget);

    //SearchResualtsWidget
    expect(
      find.descendant(
        of: find.byType(SearchResualtsWidget),
        matching: find.byType(SearchResualtWidget),
      ),
      findsAtLeastNWidgets(0),
    );
  });
}
