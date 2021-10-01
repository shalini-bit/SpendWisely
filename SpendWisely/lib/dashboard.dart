import 'package:flutter/material.dart';
import 'package:flutter_application_1/Timeline.dart';
import 'package:flutter_application_1/budget_page.dart';
import 'package:flutter_application_1/profile_page.dart';
import 'package:flutter_application_1/stats_page.dart';
import 'colors.dart';

class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  int _currentIndex = 0;

  final tabs = [
    Timeline(),
    StatsPage(),
    BudgetPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Tealss,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.article_outlined,
                color: white,
              ),
              title: Text(
                'Timeline',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.equalizer_rounded,
                color: white,
              ),
              title: Text(
                'Stats',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                color: white,
              ),
              title: Text(
                'Your Budget',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: white),
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
