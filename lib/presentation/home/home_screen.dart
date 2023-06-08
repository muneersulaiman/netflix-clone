import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import '../widgets/main_title_card.dart';
import 'widgets/background_card.dart';
import 'widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value == false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value == true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      BackgroundCard(),
                      kHeight,
                      MainTitleCard(title: "Released in the past year"),
                      kHeight,
                      MainTitleCard(title: 'Trending Now'),
                      kHeight,
                      NumberTitleCard(),
                      kHeight,
                      MainTitleCard(title: "Tense Dramas"),
                      kHeight,
                      MainTitleCard(title: "South Indian Cinemas"),
                      kHeight,
                    ],
                  ),
                  scrollNotifier.value == true
                      ? Container(
                          width: double.infinity,
                          height: 80,
                          color: Colors.yellow,
                        )
                      : kHeight,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
