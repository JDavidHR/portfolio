import 'package:flutter/material.dart';
import 'package:portfolio1/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SafeArea(
        child: Splash(),
      ),
    );
  }
}
