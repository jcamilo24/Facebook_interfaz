import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.red,
                    child: Text(
                      'mamiii',
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                  child: Text(
                    'HELLOOOOOOOO',
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  left: 10,
                  child: Text('Hi'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
