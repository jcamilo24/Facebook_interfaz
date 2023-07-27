import 'package:flutter/cupertino.dart';

import '../../models/story.dart';
import 'avatar.dart';

class storyItem extends StatelessWidget {
  const storyItem({
    super.key,
    required this.story,
    required this.isFirst,
  });

  final Story story;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 90,
      margin: EdgeInsets.only(
        left: isFirst ? 20 : 0,
        right: 10,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(story.bg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    size: 40,
                    asset: story.avatar,
                    borderwidth: 3,
                  ),
                )
              ],
            ),
          ),
          Text(
            story.username,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
