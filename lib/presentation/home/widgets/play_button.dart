import 'package:flutter/material.dart';

class MainPagePlayButton extends StatelessWidget {
  const MainPagePlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
      ),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: Colors.black,
      ),
      label: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Text(
          'Play',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
