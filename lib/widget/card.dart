import 'package:flutter/material.dart';

class CardFood extends StatelessWidget {
  const CardFood({super.key});
  Widget food(String photo) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 85,
          width: 85,
          decoration: BoxDecoration(color: const Color(0xFFE7E3E3), borderRadius: BorderRadius.circular(13)),
          child: Image.asset(photo),
        ),
        const Positioned(bottom: -7, right: -7, child: Icon(Icons.add_circle, color: Color(0xFF13E034))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        food('assets/images/cake.png'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: food('assets/images/free.png'),
        ),
        food('assets/images/meat.png'),
      ],
    );
  }
}
