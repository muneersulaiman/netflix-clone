import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../../core/colors/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              // height: 150,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius20,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w1280/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 5,
          bottom: -28,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: Colors.white,
            child: Text(
              "$index",
              style: const TextStyle(
                fontSize: 150,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
