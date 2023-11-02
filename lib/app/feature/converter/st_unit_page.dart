import 'package:flutter/material.dart';

class StUnitPage extends StatefulWidget {
  const StUnitPage({super.key});

  @override
  State<StUnitPage> createState() => _StUnitPageState();
}

class _StUnitPageState extends State<StUnitPage> {
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
