import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:molitva_app/molitva_app.dart';

void main() {
  // Настройка статус-бара (опционально, если нужно глобально)
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Прозрачный фон
      statusBarIconBrightness: Brightness.light, // Белые иконки
    ),
  );
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  runApp(const MolitvaApp());
}
