import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Text(
          'Lorem Ipsum is simply dummy text '
          'of the printing and typesetting industry.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
            decoration: TextDecoration.none,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
