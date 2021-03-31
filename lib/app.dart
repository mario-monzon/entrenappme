import 'package:entrenappme/ui/screen/home_screen.dart';
import 'package:entrenappme/utils/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entrenappme',
      initialRoute: HomeScreen.routeName,
      routes: AppRoutes.routes,
    );
  }
}