import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  final String title;
  const SearchTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
