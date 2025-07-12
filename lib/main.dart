import 'package:fitness/provider/provider_list/provider_list.dart';
import 'package:fitness/routes/app_routes/app_routes.dart';
import 'package:fitness/routes/routes_genrator/routes_genrator.dart';
import 'package:fitness/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providerList,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splash,
        onGenerateRoute: RouteGenerator.generateRoute,
        home: SplashScreen(),
      ),
    );
  }
}
