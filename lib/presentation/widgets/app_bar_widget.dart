import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants.dart';

class AppBarWidgets extends StatelessWidget {
  final String title;
  const AppBarWidgets({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(title,
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        const Spacer(),
        const Icon(
          Icons.cast_rounded,
          size: 30,
          color: kWhiteColor,
        ),
        kWidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        kWidth,
      ],
    );
  }
}
