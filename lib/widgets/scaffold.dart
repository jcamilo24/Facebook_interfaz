import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: const [
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(),
                ),
              ),
            ),
            Text('ja ja ja ja ja ja ja'),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
      //resizeToAvoidBottomInset: false,
      drawer: Drawer(),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 35,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: const Color(0xff1565c0),
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
        title: Row(
          children: const [
            Text('MyApp'),
            Text(
              'MyApp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('MyApp'),
          ],
        ),
      ),
    );
  }
}
