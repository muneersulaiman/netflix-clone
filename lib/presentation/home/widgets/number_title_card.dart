import 'package:flutter/material.dart';
import '../../../core/colors/constants.dart';
import '../../widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(
          title: "Top 10 TV Shows In India Today",
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(index: index + 1),
            ),
          ),
        )
      ],
    );
  }
}
