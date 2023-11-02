import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/feature/converter_currency.dart';
import 'package:flutter_application_2/app/feature/converter_weight.dart';

import 'feature/converter_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({
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
        '/weight': (context) => Weight(),
        '/currency': (context) => Currency(),
      },
    );
  }
}
