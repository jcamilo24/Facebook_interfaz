import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Center(
          child: Container(
            width: 400.0,
            height: 200.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(.9),
                  blurRadius: 10,
                  //offset: Offset(10, 20)
                  //spreadRadius: 50
                ),
                /*BoxShadow(
                  color: Colors.blue.withOpacity(.7),
                  blurRadius: 20,
                ),*/
              ],
              /*borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),*/
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: const [
                  Colors.yellow,
                  Colors.blue,
                  Colors.red,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
                  0.35,
                  0.60,
                  1,
                ],
              ),
            ),
            /*padding: EdgeInsets.only(
              left: 30,
              top: 10,
              bottom: 20,
            ),*/
            child: Text(
              'Colombia',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
