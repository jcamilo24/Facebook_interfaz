import 'package:flutter/material.dart';

class MyAspectRadio extends StatelessWidget {
  const MyAspectRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/55QHEOQRQBEPTF5LRJK57MDEP4.jpg',
        ),
      ),
    );
  }
}
