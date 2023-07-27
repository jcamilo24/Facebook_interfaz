import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              /*mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,*/
              children: [
                Flexible(
                  child: Container(
                    color: Colors.blueAccent,
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                ),
                Flexible(
                  child: FlutterLogo(
                    size: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
