import 'dart:math';

import 'package:flutter/material.dart';

class MyContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Text(
            'Colombia is the best country',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
