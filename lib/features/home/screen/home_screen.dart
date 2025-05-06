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
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              child: SvgPicture.asset(
                'lib/assets/img/png/Jesus.svg',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 26),
            Text(
              'Господи Иисусе Христе',
              style: theme.textTheme.titleLarge,
            ),
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
                      borderRadius: BorderRadius.circular(
                        12,
                      ), // Скругление углов
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ), // Отступы
                    backgroundColor: Colors.amber, // Цвет фона (опционально)
                    foregroundColor: Colors.black, // Цвет текста (опционально)
                  ),
                  child: Text(
                    'Молитвы',
                    style: theme.textTheme.bodyLarge,
                    ),
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
                      borderRadius: BorderRadius.circular(
                        12,
                      ), // Скругление углов
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ), // Отступы
                    backgroundColor: Colors.amber, // Цвет фона (опционально)
                    foregroundColor: Colors.black, // Цвет текста (опционально)
                  ),
                  child: Text(
                    'Песнопения',
                    style: theme.textTheme.bodyLarge,
                    ),
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
