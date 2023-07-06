import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Total', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
        Text('\$35', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFFB89C3A))),
      ],
    );
  }
}
