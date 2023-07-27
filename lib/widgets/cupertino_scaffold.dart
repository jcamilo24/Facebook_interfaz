import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          'Hello Cupertino',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
