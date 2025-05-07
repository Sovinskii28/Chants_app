import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molitva_app/core/routes/routes.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showTextOnImage = false;
  Timer? _textTimer;

  @override
  void dispose() {
    _textTimer?.cancel(); // Отменяем таймер при уничтожении виджета
    super.dispose();
  }

  void _handleImageTap() {
    setState(() {
      _showTextOnImage = true;

      // Отменяем предыдущий таймер, если он был
      _textTimer?.cancel();

      // Устанавливаем таймер на 3 секунды для скрытия текста
      _textTimer = Timer(const Duration(seconds: 3), () {
        if (mounted) {
          setState(() {
            _showTextOnImage = false;
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: _handleImageTap,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: SvgPicture.asset(
                      'lib/assets/img/png/Jesus.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: _showTextOnImage ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 700),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 15),
                      child: Text(
                        'Отец, прости им, ибо они не ведают, что творят',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: Colors.yellow,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            Text('Господи Иисусе Христе', style: theme.textTheme.titleLarge),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                    child: Text('Молитвы', style: theme.textTheme.bodyLarge),
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.push(const PrayersRoute());
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                    child: Text('Песнопения', style: theme.textTheme.bodyLarge),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
