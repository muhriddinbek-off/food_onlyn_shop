import 'package:flutter/material.dart';

import '../navigation/bottom_navigation.dart';
import '../widget/food_name.dart';
import '../widget/pages_viwebuild.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const NavigationButton(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leadingWidth: 200,
        leading: const Padding(
          padding: EdgeInsets.only(left: 22, top: 26),
          child: Text('Menu', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600, color: Colors.black)),
        ),
        actions: [
          Padding(padding: const EdgeInsets.only(top: 20, right: 20), child: Image.asset('assets/images/Ellipse 2.png')),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              height: 50,
              width: 356,
              decoration: BoxDecoration(color: const Color(0xFFE0DFDF), borderRadius: BorderRadius.circular(32)),
              child: const TextField(
                decoration: InputDecoration(hintStyle: TextStyle(color: Color(0xFF858585)), hintText: 'Search', icon: Icon(Icons.search), border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Expanded(flex: 2, child: FoodName()),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text('Popular', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 230, child: PagesBuild()),
        ],
      ),
    );
  }
}
