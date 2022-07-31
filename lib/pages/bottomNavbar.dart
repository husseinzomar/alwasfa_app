import 'package:alwasfa_app/widget/theme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'order.dart';
import 'search.dart';
import 'settings.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  static const List<Widget> _pages = <Widget>[
  Home(),
  Search(),
  Order(),
  Settings(),
];
  int currentIndex = 0;

  void onTapItem(int index) {
  setState(() {
    currentIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الوصفة الذهبية'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:  Center(
          child: _pages.elementAt(currentIndex),
        ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: const Color.fromRGBO(133, 39, 71, 0),
        ),
        child: BottomNavigationBar(
          items:  const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'الرئيسية',
                ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'البحث',
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.local_mall_rounded),
              label: 'المتجر',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'الحساب',
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          selectedFontSize: 20,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          onTap: onTapItem,
          showSelectedLabels: false,
        ),
      ),
    );
  }
}
