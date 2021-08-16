import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:navigation/Emotional.dart';
import 'package:navigation/Help.dart';
import 'package:navigation/community.dart';
import 'package:navigation/free.dart';
import 'package:navigation/mental.dart';
import 'package:navigation/mentorship.dart';
import 'package:navigation/physical.dart';
import 'package:navigation/profile.dart';
import 'package:navigation/self.dart';
import 'package:navigation/spritual.dart';

class Wheel extends StatefulWidget {
  Wheel({Key? key}) : super(key: key);

  @override
  _WheelState createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  int currentTabIndex = 0;
  late List<Widget> pages;

  late Widget currentPage;

  late Wheel homepage;

  late Profile getProfilePage;
  late Help newCart;

  @override
  void initState() {
    super.initState();

    homepage = Wheel();

    getProfilePage = Profile();
    newCart = Help();
    pages = [homepage, newCart, getProfilePage];
    currentPage = homepage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Column(children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 26.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent[400],
                        border: Border.all(color: Colors.white, width: 5.0),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Center(
                          child: Text(
                        "Start Here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black),
                      )),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Center(
                        child: Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Community()));
                            },
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                width: 200.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16)),
                                    border: Border.all(
                                        color: Colors.black, width: 3.0)),
                                child: Center(
                                    child: Text("Community",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0))),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Self()));
                                },
                                child: Container(
                                  width: 200.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16)),
                                      border: Border.all(
                                          color: Colors.black, width: 3.0)),
                                  child: Center(
                                      child: Text("Self Reliance",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 18.0))),
                                ),
                              ),
                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => name()));
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 5.0),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(130)),
                                        color: Colors.blue),
                                    child: Center(
                                        //
                                        child: Transform.rotate(
                                      angle: -math.pi / 4,
                                      child: Text(
                                        "Emotional",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.white),
                                      ),
                                    )),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Spritual()));
                                  },
                                  child: Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 5.0),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(130)),
                                          color: Colors.redAccent[400]),
                                      child: Center(
                                          child: new RotationTransition(
                                        turns: new AlwaysStoppedAnimation(
                                            1500 / 360),
                                        child: new Text(
                                          "Spritual",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ))),
                                ),
                              ]),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Physical()));
                                    },
                                    child: Container(
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 5.0),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(130)),
                                            color: Colors.blueGrey[50]),
                                        child: Center(
                                            child: new RotationTransition(
                                          turns: new AlwaysStoppedAnimation(
                                              1500 / 360),
                                          child: new Text(
                                            "Physical",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ))),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Mental()));
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 5.0),
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(130)),
                                          color: Colors.yellow),
                                      child: Center(
                                          child: Transform.rotate(
                                        angle: -math.pi / 4,
                                        child: Text(
                                          "Mental",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0),
                                        ),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Free()));
                                },
                                child: Container(
                                  width: 200.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                      color: Colors.yellowAccent,
                                      border: Border.all(
                                          color: Colors.black, width: 3.0),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16))),
                                  child: Center(
                                      child: Text(
                                    "Free Giving",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mentorship()));
                            },
                            child: RotatedBox(
                              quarterTurns: 1,
                              child: Container(
                                width: 190.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16)),
                                    border: Border.all(
                                        color: Colors.black, width: 3.0)),
                                child: Center(
                                    child: Text("Mentorship",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ]))
        ]));
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
