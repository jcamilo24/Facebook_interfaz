import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final names = ['camilo', 'juan', 'bolaños', 'daniel'];
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (_, int index) {
          final name = names[index];
          return Container(
            height: 100,
            margin: EdgeInsets.all(5),
            child: Text(name),
            alignment: Alignment.center,
          );
        },
        itemCount: names.length,
        separatorBuilder: (_, int index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  color: Colors.black26,
                ),
              ),
              Text(names[index].length.toString()),
              Expanded(
                child: Container(
                  height: 2,
                  color: Colors.black54,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
