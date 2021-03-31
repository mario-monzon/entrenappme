import 'package:entrenappme/ui/screen/trainings/training_four_screen.dart';
import 'package:entrenappme/ui/screen/trainings/training_one_screen.dart';
import 'package:entrenappme/ui/screen/trainings/training_three_screen.dart';
import 'package:entrenappme/ui/screen/trainings/training_two_screen.dart';
import 'package:entrenappme/ui/widget/trainning_tile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // ignore: prefer_const_declarations
  static final routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrenamiento'),
      ),
      body: ListView(
        children: [
          TrainingTile(
            title: 'Entrenamiento 1',
            routeName: TrainingOne.routeName,
          ),
          TrainingTile(
            title: 'Entrenamiento 2',
            routeName: TrainingTwo.routeName,
          ),
          TrainingTile(
            title: 'Entrenamiento 3',
            routeName: TrainingThree.routeName,
          ),
          TrainingTile(
            title: 'Entrenamiento 4',
            routeName: TrainingFour.routeName,
          ),
        ],
      ),
    );
  }
}
