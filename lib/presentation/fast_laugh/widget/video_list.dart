import 'package:flutter/material.dart';

class VideoList extends StatelessWidget {
  final int index;

  const VideoList({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /////left side////

                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),

                /////right side////

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://www.themoviedb.org/t/p/w1280/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg'),
                      ),
                    ),
                    VideoActionWidgets(
                        icon: Icons.emoji_emotions, title: 'LoL'),
                    VideoActionWidgets(
                        icon: Icons.add_rounded, title: 'My List'),
                    VideoActionWidgets(
                        icon: Icons.share_rounded, title: 'Share'),
                    VideoActionWidgets(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidgets extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionWidgets({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
