import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app/app_home.dart';

void main() {
  /// Импорт зависимостей делать
  ///
  /// -----
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}
