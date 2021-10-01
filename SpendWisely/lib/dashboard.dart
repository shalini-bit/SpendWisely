import 'package:flutter/material.dart';

class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('Sngb')),
    Center(child: Text('dsjb')),
    Center(child: Text('shdbf')),
  ];

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Color(0xff0f284b);
    return Scaffold(
      backgroundColor: primaryColor,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              title: Text('Your Wallet'),
              backgroundColor: Color(0xff01579b)),
          BottomNavigationBarItem(
              icon: Icon(Icons.equalizer_rounded),
              title: Text('Stats'),
              backgroundColor: Color(0xff01579b)),
          BottomNavigationBarItem(
              icon: Icon(Icons.savings_outlined),
              title: Text('Savings'),
              backgroundColor: Color(0xff01579b)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Color(0xff01579b)),
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
