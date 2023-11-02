import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/feature/currency.dart';
import 'package:flutter_application_2/app/feature/length.dart';
import 'package:flutter_application_2/app/feature/storage_unit.dart';
import 'package:flutter_application_2/app/feature/temperature.dart';
import 'package:flutter_application_2/app/feature/weight.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConvertState();
}

class _ConvertState extends State<Converter> {
  final List<String> _titles = [
    'Вес',
    'Единицы хранения',
    'Длина',
    'Валюта',
    'Температура',
  ];

  final List<IconData> _icons = [
    Icons.terrain, // вес
    Icons.show_chart, // длина
    Icons.local_atm, // валюта
    Icons.ac_unit, // температура
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter converter'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 5 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: _titles.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Weight(),
                              ));
                        }
                        if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const stUnit(),
                              ));
                        }
                        if (index == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Length(),
                              ));
                        }
                        if (index == 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Currency(),
                              ));
                        }
                        if (index == 4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Temperature(),
                              ));
                        }
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            _icons[index],
                            size: 120,
                          ),
                          Text(
                            _titles[index],
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )));
            }),
      ),
    );
  }
}
