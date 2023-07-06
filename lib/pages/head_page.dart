import 'package:flutter/material.dart';

class HeadPage extends StatelessWidget {
  const HeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5519D5),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xFF5817E1), Color.fromARGB(94, 205, 186, 221)])),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 98),
              Container(padding: const EdgeInsets.all(18), height: 300, width: 300, decoration: BoxDecoration(color: const Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(150)), child: Image.asset('assets/images/meat.png', height: 250, width: 250, fit: BoxFit.fill)),
              const SizedBox(height: 90),
              const Text('Enjoy Your\nFood', textAlign: TextAlign.center, style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600, color: Colors.white, height: 1.5)),
              const SizedBox(height: 41),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
                  backgroundColor: const MaterialStatePropertyAll(Color(0xFFD9D9D9)),
                  minimumSize: const MaterialStatePropertyAll(Size(245, 79)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home-page');
                },
                child: const Text('Get started', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFF5519D5))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
