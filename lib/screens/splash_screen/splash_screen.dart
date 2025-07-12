import 'package:fitness/provider/splash_provider/splash_screen_provider.dart';
import 'package:fitness/screens/home_screen/home_screen.dart';
import 'package:fitness/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashProvider = Provider.of<SplashScreenProvider>(context);

    if (splashProvider.isLoading) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(AppImages.trainingWorkoutGym1)
        ),
      );
    } else {
      Future.microtask(() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()),
        );
      });
      return const SizedBox.shrink();
    }
  }
}
