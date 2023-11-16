import 'package:flutter/material.dart';

import '../../../widgets/appbar_widget.dart';
import '../../../widgets/search_text_field.dart';

class FindDoctorsView extends StatelessWidget {
  const FindDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/image/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: const [
            SizedBox(height: 100, child: AppbarWidget('Find Doctors')),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(height: 54, child: SearchTextField('Dentist')),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchResualtsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResualtsWidget extends StatelessWidget {
  const SearchResualtsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchResualtWidget(),
        SizedBox(height: 15),
      ],
    );
  }
}

class SearchResualtWidget extends StatelessWidget {
  const SearchResualtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}
