import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor_hunt/app/modules/favourite_doctor/views/favourite_doctor_view.dart';
import 'package:doctor_hunt/app/widgets/appbar_widget.dart';
import 'package:doctor_hunt/app/widgets/search_text_field.dart';
import 'package:doctor_hunt/app/widgets/headline_widget.dart';

void main() {
  testWidgets('11_Favourite doctors screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: FavouriteDoctorView()));
    expect(find.byType(AppbarWidget), findsOneWidget);

    expect(find.byType(SearchTextField), findsOneWidget);

    expect(find.byType(FavouriteDoctorsWidget), findsOneWidget);

    expect(find.byType(FeatureDoctorsWidget), findsOneWidget);

    //AppbarWidget
    expect(find.text('Favourite Doctors'), findsOneWidget);

    //FavouriteDoctorsWidget
    expect(
      find.descendant(
        of: find.byType(DayTabsWidget),
        matching: find.byType(SelectTimeBtnWidget),
      ),
      findsAtLeastNWidgets(0),
    );

    //FeatureDoctorsWidget
    expect(find.byType(HeadlineWidget), findsOneWidget);
    
    expect(
      find.descendant(
        of: find.byType(HeadlineWidget),
        matching: find.text('Feature Doctor'),
      ),
      findsOneWidget,
    );

    await tester.dragUntilVisible(
      find.byType(FeatureDoctorsWidget), // what you want to find
      find.byType(FavouriteDoctorView), // widget you want to scroll
      const Offset(0, -250), // delta to move
    );

    expect(
      find.descendant(
        of: find.byType(FavouriteDoctorView),
        matching: find.byType(FeatureDoctorsWidget),
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
