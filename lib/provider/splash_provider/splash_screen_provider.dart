import 'package:flutter/material.dart';

class SplashScreenProvider extends ChangeNotifier {
  bool isLoading = false;

  splashProvider() {
    init();
  }

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 3));
    isLoading = true;
    notifyListeners();
  }
}
