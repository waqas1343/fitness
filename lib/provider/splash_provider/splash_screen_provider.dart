import 'package:flutter/material.dart';

class SplashScreenProvider extends ChangeNotifier {
  bool isLoading = true;

  SplashScreenProvider() {
    init();
  }

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 10));
    isLoading = false;
    notifyListeners();
  }
}
