import 'package:flutter/material.dart';

class ChekoutAdd extends StatefulWidget {
  const ChekoutAdd({super.key});

  @override
  State<ChekoutAdd> createState() => _ChekoutAddState();
}

class _ChekoutAddState extends State<ChekoutAdd> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              setState(() {});
              count++;
            },
            icon: const Icon(Icons.add_circle, color: Color(0xFF8058CB))),
        Text('$count', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF5817E1))),
        IconButton(
            onPressed: () {
              setState(() {});
              if (count > 1) {
                count--;
              } else {
                count = 1;
              }
            },
            icon: const Icon(Icons.remove_circle, color: Color(0xFF8058CB))),
      ],
    );
  }
}
