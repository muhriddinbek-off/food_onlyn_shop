import 'package:flutter/material.dart';
import 'package:food_onlyn_shop/pages/by_food.dart';
import 'package:food_onlyn_shop/pages/food_info.dart';
import 'package:food_onlyn_shop/pages/head_page.dart';
import 'package:food_onlyn_shop/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/head-page',
      routes: {
        '/head-page': (context) => const HeadPage(),
        '/home-page': (context) => const HomePage(),
        '/food-info': (context) => const FoodInfo(),
        '/by-food': (context) => const ByFood(),
      },
    );
  }
}
