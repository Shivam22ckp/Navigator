import 'package:flutter/material.dart';
import 'package:navigation/bottombar.dart';
import 'package:navigation/bottomnav.dart';
import 'package:navigation/bottomprof.dart';

class Mental extends StatefulWidget {
  Mental({Key? key}) : super(key: key);

  @override
  _MentalState createState() => _MentalState();
}

class _MentalState extends State<Mental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNavi()));
                  },
                  child: Column(
                    children: [Icon(Icons.home), Text("Home")],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bottombar()));
                  },
                  child: Column(
                    children: [Icon(Icons.help), Text("Help")],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => bottomprof()));
                  },
                  child: Column(
                    children: [Icon(Icons.person), Text("Profile")],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
