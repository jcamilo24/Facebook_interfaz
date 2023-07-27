import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          height: 400,
          width: 400,
          child: CachedNetworkImage(
            imageUrl:
                "https://cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/55QHEOQRQBEPTF5LRJK57MDEP4.jpg",
            placeholder: (_, __) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (_, __, error) => Text(
              error.toString(),
            ),
          ),
        ),
      ),
    );
  }
}
