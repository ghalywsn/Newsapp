import 'package:NewsApp/main.dart';
import 'package:NewsApp/pages/kontak.dart';
import 'package:NewsApp/pages/list_profile.dart';
import 'package:NewsApp/pages/profil.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; //default index

  List<Widget> _widgetOptions = [
    HomePage(),
    Kontak(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.red,
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        // gradient: LinearGradient(
        //   colors: [Colors.pink, Colors.yellow],
        // ),
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'About',
            icon: Icons.contacts,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_box_outlined,
          ),
        ],
      ),
    );
  }
}
