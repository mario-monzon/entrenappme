import 'package:entrenappme/data/exercise_data.dart';
import 'package:entrenappme/ui/widget/exercise_item_widget.dart';
import 'package:flutter/material.dart';

class TrainingOne extends StatelessWidget {
  // ignore: prefer_const_declarations
  static final String routeName = '/training_one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entrenamiento 1'),
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
                series: 1,
                hasRep: true,
                rep: 1,
                name: 'Técnica de Carrera',
              ),
              ExerciseItem(
                series: 2,
                hasTime: true,
                time: 5,
                hasBreak: true,
                timeBreak: 2,
                name: 'Carrera',
              ),
              ExerciseItem(
                series: 2,
                hasTime: true,
                time: 4,
                timeBreak: 1,
                name: 'Carrera',
              ),
              ExerciseItem(
                series: 5,
                isTouchable: true,
                name: 'Trabajo de Core',
                exercisesData: ExercisesData.core01,
              )
            ],
          ),
        ));
  }
}
