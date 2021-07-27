import 'package:drawer/potfolio.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                color: Colors.yellow,
                child: Text("ZAin"),
              ),
            ),
            ListTile(
              title: Text("Home"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => potfolio()));
              },
              child: ListTile(
                title: Text("Potfolio"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
