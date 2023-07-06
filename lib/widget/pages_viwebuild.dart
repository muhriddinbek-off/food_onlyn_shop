import 'package:flutter/material.dart';
import 'package:food_onlyn_shop/modul/map.dart';

class PagesBuild extends StatelessWidget {
  const PagesBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: info.length,
        itemBuilder: (context, index) {
          final argument = info[index];
          return Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              height: 205,
              width: 161,
              decoration: BoxDecoration(
                color: const Color(0xFFE7E3E3),
                borderRadius: BorderRadius.circular(13),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/food-info', arguments: argument);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120, child: Image.asset(argument['image'])),
                    Text(argument['food-name'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(argument['sent'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFFB89C3A))),
                        const Icon(Icons.add_circle, color: Color(0xFFB89C3A)),
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}
