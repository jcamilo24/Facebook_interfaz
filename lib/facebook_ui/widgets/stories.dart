import 'package:app_1_flutter/facebook_ui/widgets/avatar.dart';
import 'package:app_1_flutter/facebook_ui/widgets/story_item.dart';
import 'package:app_1_flutter/models/story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _stories = [
  Story(
    bg: 'assets/wallpapers/1.jpeg',
    avatar: 'assets/users/1.jpg',
    username: 'Laura',
  ),
  Story(
    bg: 'assets/wallpapers/2.jpeg',
    avatar: 'assets/users/2.jpg',
    username: 'Pepe',
  ),
  Story(
    bg: 'assets/wallpapers/3.jpeg',
    avatar: 'assets/users/3.jpg',
    username: 'Lili',
  ),
  Story(
    bg: 'assets/wallpapers/4.jpeg',
    avatar: 'assets/users/4.jpg',
    username: 'Baley',
  ),
  Story(
    bg: 'assets/wallpapers/5.jpeg',
    avatar: 'assets/users/5.jpg',
    username: 'Mario',
  ),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return storyItem(
            story: story,
            isFirst: index == 0,
          );
        },
        itemCount: _stories.length,
      ),
    );
  }
}
