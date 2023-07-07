import 'package:flutter/material.dart';
import 'package:food_onlyn_shop/widget/instruction.dart';
import 'package:food_onlyn_shop/widget/total.dart';

import '../modul/map.dart';
import '../navigation/bottom_navigation.dart';
import '../widget/button.dart';

class ByFood extends StatefulWidget {
  const ByFood({super.key});

  @override
  State<ByFood> createState() => _ByFoodState();
}

class _ByFoodState extends State<ByFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigationButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text('${item['current']} items in cart', style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: photo.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 112,
                                width: 112,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE7E3E3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset(photo[index]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(foodName[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                                    Text('\$${foodSena[index]}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFFB89C3A), height: 1.8)),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              setState(() {});
                                              currentindex[index]++;
                                              item['total'] += foodSena[index];
                                            },
                                            icon: const Icon(Icons.add_circle, color: Color(0xFF8058CB))),
                                        Text('${currentindex[index]}', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF5817E1))),
                                        IconButton(
                                            onPressed: () {
                                              setState(() {});
                                              if (currentindex[index] > 1) {
                                                currentindex[index]--;
                                                item['total'] -= foodSena[index];
                                              } else {
                                                currentindex[index] = 1;
                                              }
                                            },
                                            icon: const Icon(Icons.remove_circle, color: Color(0xFF8058CB))),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              setState(() {});
                              photo.remove(photo[index]);
                              foodName.remove(foodName[index]);
                              item['total'] -= foodSena[index];
                              foodSena.remove(foodSena[index]);
                              item['current']--;
                            },
                            icon: const Icon(Icons.cancel, color: Color(0xFFCE3B3B))),
                      );
                    })),
            const Inctruction(),
            const SizedBox(height: 25),
            const Total(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: ButtonChekout(),
            ),
          ],
        ),
      ),
    );
  }
}
