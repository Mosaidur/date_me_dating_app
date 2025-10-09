import 'package:flutter/material.dart';

class CustomWidget2 extends StatelessWidget {
  const CustomWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      child: const Text(
        "Find Partner",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
    );
  }
}