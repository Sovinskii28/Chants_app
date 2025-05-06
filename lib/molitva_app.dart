import 'package:flutter/material.dart';
import 'package:molitva_app/core/routes/routes.dart';
import 'package:molitva_app/core/theme/theme.dart';


class MolitvaApp extends StatefulWidget {
  const MolitvaApp({super.key});

  @override
  State<MolitvaApp> createState() => _MolitvaAppState();
}

class _MolitvaAppState extends State<MolitvaApp> {

      final _appRouter = AppRouter();
   @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: molitvaTheme,
      routerConfig: _appRouter.config(    
      ),
    );
  }
}
