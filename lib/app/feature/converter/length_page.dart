import 'package:flutter/material.dart';

class LengthPage extends StatefulWidget {
  const LengthPage({super.key});

  @override
  State<LengthPage> createState() => _LengthPageState();
}

class _LengthPageState extends State<LengthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Length'),
        backgroundColor: Colors.black,
      ),
    );
  }
}