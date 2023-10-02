import 'package:flutter/material.dart';

class Cycle extends StatelessWidget {
  const Cycle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: const Text("cycle")),
    );;
  }
}
