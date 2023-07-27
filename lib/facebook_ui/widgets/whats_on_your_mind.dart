import 'package:flutter/material.dart';

import 'avatar.dart';

class whatsOnYourMind extends StatelessWidget {
  const whatsOnYourMind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: const [
          Avatar(
            size: 50,
            asset: 'assets/users/1.jpg',
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Text(
              "What's on your mind, Lisa?",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
