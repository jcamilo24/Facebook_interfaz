import 'package:app_1_flutter/widgets/list_view_builder.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            IconButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (_) => MyListViewBuilder(),
                );
                Navigator.push(context, route);
              },
              icon: Icon(
                Icons.login,
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  18,
                  (index) => Container(
                    width: 100,
                    height: 50,
                    color: Colors.primaries[index],
                    alignment: Alignment.center,
                    child: Text('$index'),
                  ),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: List.generate(
                5,
                (index) => Container(
                  height: 50,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.red,
            ),
            Container(
              height: 450,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
