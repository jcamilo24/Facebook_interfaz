import 'package:flutter/material.dart';

class MyChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = List.generate(
      18,
      (index) => Container(
        width: 100,
        height: 300,
        color: Colors.primaries[index],
        child: Text('numero $index'),
        alignment: Alignment.center,
      ),
    );
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: 300,
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(8),
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Row(
                        children: colors,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Row(
                        children: colors,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(),
                    ),
                    ...colors,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
