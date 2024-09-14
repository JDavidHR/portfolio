import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio1/features/core/constants/colors.dart';
import 'package:portfolio1/features/home/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  void _simulateLoading() async {
    // Simula un retardo de 3 segundos antes de mostrar la pantalla principal
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: AnimatedSwitcher(
          duration:
              const Duration(milliseconds: 800), // Duración de la transición
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: _isLoading
              ? Lottie.asset(
                  'lib/assets/animations/loading.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  key: const ValueKey(
                      1), // Llave única para el estado de loading
                )
              : const Home(
                  key: ValueKey(2)), // Llave única para la pantalla Home
        ),
      ),
    );
  }
}
