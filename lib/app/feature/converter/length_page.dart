import 'package:flutter/material.dart';

class LengthPage extends StatefulWidget {
  LengthPage({super.key});

  @override
  State<LengthPage> createState() => _LengthPageState();
}

class _LengthPageState extends State<LengthPage> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Length'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isActive = !isActive;
                });
              },
              child: Container(
                height: 100,
                width: 100,
                color: isActive ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
