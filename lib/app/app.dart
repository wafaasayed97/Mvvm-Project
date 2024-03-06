import 'package:flutter/material.dart';

import '../presentation/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
