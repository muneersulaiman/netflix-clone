import 'package:flutter/material.dart';

class HomeButtons extends StatelessWidget {
  final String title;
  final IconData icon;
  const HomeButtons({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
