import 'package:converter/app/feature/converter/currency_page.dart';
import 'package:converter/app/feature/converter/length_page.dart';
import 'package:converter/app/feature/converter/st_unit_page.dart';
import 'package:converter/app/feature/converter/temperature_page.dart';
import 'package:converter/app/feature/converter/weight_page.dart';
import 'package:converter/app/feature/home/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Converter(),
        '/weight': (context) => WeightPage(),
        '/currency': (context) => CurrencyPage(),
        '/temperature': (context) => TemperaturePage(),
        '/st_unit': (context) => stUnitPage(),
        '/length': (context) => LengthPage(),
      },
    );
  }
}
