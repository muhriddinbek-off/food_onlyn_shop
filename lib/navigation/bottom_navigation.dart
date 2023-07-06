import 'package:flutter/material.dart';

import '../modul/map.dart';

class NavigationButton extends StatefulWidget {
  const NavigationButton({super.key});

  @override
  State<NavigationButton> createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      currentIndex: index['current'],
      selectedIconTheme: const IconThemeData(color: Colors.blue),
      unselectedItemColor: Colors.blue.shade100,
      onTap: (value) {
        setState(() {});
        if (value % 2 == 0) {
          index['current'] = value;
          Navigator.pushReplacementNamed(context, rout[value]);
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }
}
