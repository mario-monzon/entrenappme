import 'package:entrenappme/data/exercise_data.dart';
import 'package:entrenappme/ui/widget/exercise_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_all_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class TrainingFour extends StatelessWidget {
  // ignore: prefer_const_declarations
  static final String routeName = 'training_four';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entrenamiento 4'),
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
                name: 'Calentamiento con elásticos',
                isTouchable: true,
                exercisesData: ExercisesData.calentamiento01,
              ),
              ExerciseItem(
                series: 4,
                hasRep: true,
                rep: 12,
                name: 'Press plano con Mancuernas',
              ),
              ExerciseItem(
                series: 4,
                hasRep: true,
                rep: 8,
                name: 'Abertura en banco inclinado',
              ),
              ExerciseItem(
                series: 4,
                hasRep: true,
                rep: 10,
                hasWeight: true,
                repWeight: 30,
                name: 'Press hombro con barra',
              ),
              ExerciseItem(
                series: 4,
                hasRep: true,
                rep: 12,
                name: 'Serrucho con mancuerna',
              ),
            ],
          ),
        ));
  }
}
