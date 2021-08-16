import 'package:flutter/material.dart';
import 'package:navigation/Help.dart';
import 'package:navigation/home.dart';
import 'package:navigation/profile.dart';

class BottomNavi extends StatefulWidget {
  BottomNavi({Key? key}) : super(key: key);

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Help",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: currentPage,
    );
  }
}
