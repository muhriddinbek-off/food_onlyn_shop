import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leadingWidth: 200,
        leading: const Padding(
          padding: EdgeInsets.only(left: 32, top: 46),
          child: Text('Menu', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600, color: Colors.black)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 36),
            child: Image.asset('assets/images/Ellipse 2.png'),
          ),
        ],
      ),
    );
  }
}
