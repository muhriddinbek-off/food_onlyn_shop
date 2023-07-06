import 'package:flutter/material.dart';
import 'package:food_onlyn_shop/modul/map.dart';

class FoodName extends StatefulWidget {
  const FoodName({super.key});

  @override
  State<FoodName> createState() => _FoodNameState();
}

class _FoodNameState extends State<FoodName> {
  String image = 'assets/images/cake.png';
  int ontapcolor = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: info.length,
              itemBuilder: (context, index) {
                final argument = info[index];
                return Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        padding: const EdgeInsets.all(5),
                        height: 78,
                        width: 78,
                        decoration: BoxDecoration(color: ontapcolor == index ? const Color(0xFF5817E1) : const Color(0xFFDAD7D7), borderRadius: BorderRadius.circular(13)),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              ontapcolor = index;
                              image = argument['image'];
                            });
                          },
                          child: Image.asset(argument['image']),
                        )),
                    Text(argument['food-name'], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF858585))),
                  ],
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(left: 20, bottom: 10), child: Text('Promations', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
        Center(
          child: Container(
            height: 163,
            width: 355,
            decoration: BoxDecoration(color: const Color(0xFF8058CB), borderRadius: BorderRadius.circular(14)),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Today’s Offer", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Color(0xFFFFFFFF))),
                          Text("Free Plate Of Fries", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF))),
                          Text("on all orders above \$150", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFFFFFFFF))),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(right: 5, top: -35, child: Image.asset(image, height: 130, width: 160, fit: BoxFit.fill)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
