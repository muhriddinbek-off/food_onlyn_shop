import 'package:flutter/material.dart';

class Inctruction extends StatelessWidget {
  const Inctruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Other Instruction', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
        const SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ],
    );
  }
}
