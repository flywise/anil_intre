import 'package:community/View/feeds/feeds_screen.dart';
import 'package:community/View/notification/notification_screen.dart';
import 'package:community/View/profile/profile_details.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class Bottom extends StatefulWidget {
  int? index;
  Bottom({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;
  List pageData = [
    HomeScreen(),
    FeedsScreen(),
    NotificationScreen(),
    ProfileDetails()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pageData[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        backgroundColor: Color(0xffD9D9D9),
        selectedFontSize: 15,
        unselectedFontSize: 13,
        selectedItemColor: Color(0xff4A1A88),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "",
              backgroundColor: Color(0xff868686)),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(
                  Icons.video_collection,
                ),
              ),
              label: "",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: '',
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
