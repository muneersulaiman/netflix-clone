import 'package:flutter/material.dart';

import 'home_button.dart';
import 'play_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pnQYjDxqZ3C6reI8N0MfNi4NMkZ.jpg'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                HomeButtons(
                  title: 'My List',
                  icon: Icons.add_rounded,
                ),
                MainPagePlayButton(),
                HomeButtons(
                  title: 'Info',
                  icon: Icons.info_outline_rounded,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
