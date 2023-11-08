import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    double size = 30;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SizedBox(
              width: size,
              height: size,
              child: IconButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Theme.of(context).colorScheme.onPrimary),
                icon: Icon(Icons.arrow_back_ios_new,
                    color: Theme.of(context).colorScheme.outline, size: 15),
              ),
            ),
            const SizedBox(width: 10),
            Text(title, style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}
