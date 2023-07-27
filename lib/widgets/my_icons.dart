import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../icons/custom_icons_icons.dart' as alias;

class MyIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              alias.CustomIcons.home,
              size: 500,
              color: Color.fromARGB(255, 81, 52, 161),
            ),
          ],
        ),
      ),
    );
  }
}
