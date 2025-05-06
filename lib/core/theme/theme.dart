import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final molitvaTheme = ThemeData.dark().copyWith(
  // Основная цветовая схема (тёмная)
  colorScheme: ColorScheme.dark(
    primary: Colors.amber,          // Основной цвет (кнопки, элементы UI)
    secondary: const Color.fromARGB(255, 136, 87, 0),   // Второстепенный цвет
    surface: Colors.grey[900]!,     // Цвет фона карточек/панелей
    background: Colors.black,       // Основной фон
    onBackground: Colors.white,     // Текст на фоне
  ),
  // Стиль AppBar 
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,  // Чёрный фон AppBar
    foregroundColor: Colors.amber,  // Цвет иконок и текста в AppBar
    elevation: 0,                   // Убираем тень
    systemOverlayStyle: SystemUiOverlayStyle.light, // Светлый статус-бар (белые иконки)
  ),
  // Дополнительные настройки (опционально)
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Alegreya',
      fontWeight: FontWeight.bold,
      fontSize: 20,
      ),  // Основной текст
    titleLarge: TextStyle(
      color: Color.fromARGB(255, 255, 157, 0),
      fontSize: 32,
      fontFamily: 'Ponomar'
      ), // Заголовки
  ),
);