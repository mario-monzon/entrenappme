import 'package:entrenappme/ui/widget/exercise_item_widget.dart';
import 'package:flutter/material.dart';

class TrainingTwo extends StatelessWidget {
  // ignore: prefer_const_declarations
  static final String routeName = '/training_two';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entrenamiento 2'),
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
                hasTime: true,
                time: 6,
                name: 'Assault Bike',
              ),
              ExerciseItem(
                series: 5,
                hasRep: true,
                rep: 12,
                name: 'PMR + 20m Salto Rana',
              ),
              ExerciseItem(
                series: 2,
                hasRep: true,
                rep: 12,
                hasWeight: true,
                repWeight: 30,
                name: 'Sentadilla con barra por detras',
              ),
              ExerciseItem(
                series: 2,
                hasRep: true,
                rep: 10,
                hasWeight: true,
                repWeight: 45,
                name: 'Sentadilla con barra por detras',
              ),
              ExerciseItem(
                series: 1,
                hasTurns: true,
                turns: 4,
                hasBreak: true,
                timeBreak: 1,
                name: '3 farolas 60%',
              ),
            ],
          ),
        ));
  }
}
