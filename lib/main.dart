import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speed_house_app/provider/space_provider.dart';
import 'package:speed_house_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider()..getRecommendedSpaces(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
