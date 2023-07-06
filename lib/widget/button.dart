import 'package:flutter/material.dart';

class ButtonChekout extends StatelessWidget {
  const ButtonChekout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(344, 59)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))), onPressed: () {}, child: const Text('Checkout', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500))),
        TextButton(onPressed: () {}, child: Text('Back to menu')),
      ],
    );
  }
}
