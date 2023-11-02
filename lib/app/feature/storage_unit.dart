import 'package:flutter/material.dart';

class stUnit extends StatefulWidget {
  const stUnit({super.key});

  @override
  State<stUnit> createState() => _stUnitState();
}

class _stUnitState extends State<stUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stUnit'),
        backgroundColor: Colors.black,
      ),
    );
  }
}
