import 'package:flutter/material.dart';
import '../../core/colors/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
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
    );
  }
}
