import 'package:fitness/provider/splash_provider/splash_screen_provider.dart';
import 'package:provider/provider.dart';

final List<ChangeNotifierProvider> providerList = [

  ChangeNotifierProvider(create: (_)=> SplashScreenProvider()),

];
