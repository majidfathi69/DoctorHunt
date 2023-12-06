import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField(this.hitText, {super.key, this.search});

  final String hitText;
  final Function()? search;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).colorScheme.onPrimary),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary, width: 0),
            borderRadius: BorderRadius.circular(6),
          ),
          hintText: hitText,
          border: InputBorder.none,
          prefixIcon: InkWell(onTap: search, child: const Icon(Icons.search)),
        ),
      ),
    );
  }
}
