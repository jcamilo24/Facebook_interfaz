import 'package:flutter/material.dart';

class MyCustomFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            Text(
              '''
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type 
specimen book.''',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ),
      ),
    );
  }
}
