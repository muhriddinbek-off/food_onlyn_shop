import 'package:flutter/material.dart';

import '../modul/map.dart';
import '../widget/card.dart';
import '../widget/food_add.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final information = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: const Color(0xFF5F23DE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 370,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.white, size: 27))),
                Center(child: Image.asset(information['image'], height: 271, width: 320, fit: BoxFit.fill)),
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(color: const Color(0xFF5F23DE), borderRadius: BorderRadius.circular(24)),
                          child: Row(
                            children: const [
                              Icon(Icons.star, color: Color(0xFFF39C12)),
                              Text('4.5', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white)),
                            ],
                          ),
                        ),
                        Text(information['sent'], style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Color(0xFFB89C3A))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(information['food-name'], style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                        const ChekoutAdd(),
                      ],
                    ),
                  ),
                  const Text('Big Juicy Beef Burger with cheese,lettuce\ntomato,onions and special sauce', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF949494))),
                  const SizedBox(height: 40),
                  const Text('Add Ones', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  const CardFood(),
                  const SizedBox(height: 36),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: const MaterialStatePropertyAll(Size(357, 50)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    ),
                    onPressed: () {
                      photo.add(information['image']);
                      foodName.add(information['food-name']);
                      foodSena.add(information['sent']);
                      item['current']++;
                      Navigator.pushNamed(context, '/home-page');
                    },
                    child: const Text('Add to cart', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
