import 'package:flutter/material.dart';

class stUnitPage extends StatefulWidget {
  const stUnitPage({super.key});

  @override
  State<stUnitPage> createState() => _stUnitPageState();
}

class _stUnitPageState extends State<stUnitPage> {
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
