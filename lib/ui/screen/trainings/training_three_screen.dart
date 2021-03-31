import 'package:entrenappme/data/exercise_data.dart';
import 'package:entrenappme/ui/widget/exercise_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_all_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class TrainingThree extends StatelessWidget {
  // ignore: prefer_const_declarations
  static final String routeName = '/training_three';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entrenamiento 3'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ExerciseItem(
                series: 1,
                hasRep: false,
                rep: 1,
                name: 'Movilidad Articular',
              ),
              ExerciseItem(
                series: 4,
                name: 'Calentamiento Específico',
                isTouchable: true,
                exercisesData: ExercisesData.calentamiento01,
              ),
              ExerciseItem(
                series: 4,
                isTouchable: true,
                name: 'KB Swing + Flexiones',
                exercisesData: ExercisesData.work01,
              ),
              ExerciseItem(
                series: 4,
                isTouchable: true,
                name: 'Facepull + Frog Jump',
                exercisesData: ExercisesData.work02,
              ),
              ExerciseItem(
                series: 2,
                hasBreak: true,
                timeBreak: 2,
                name: '800m Remo',
              ),
            ],
          ),
        ));
  }
}
