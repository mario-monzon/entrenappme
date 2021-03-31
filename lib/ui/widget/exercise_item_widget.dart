import 'package:entrenappme/ui/widget/exercise_detail_widget.dart';
import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  final int series;
  final int rep;
  final int time;
  final int timeBreak;
  final int repWeight;
  final int turns;
  final String name;
  final bool hasRep;
  final bool hasTime;
  final bool hasBreak;
  final bool hasWeight;
  final bool hasTurns;
  final bool isTouchable;
  final List<String> exercisesData;

  // ignore: sort_constructors_first
  const ExerciseItem({
    Key key,
    this.series,
    this.rep,
    this.time,
    this.name,
    this.hasRep,
    this.hasTime,
    this.timeBreak,
    this.hasBreak,
    this.repWeight,
    this.hasWeight,
    this.hasTurns,
    this.turns,
    this.isTouchable,
    this.exercisesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isTouchable ?? false
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseDetail(
                    title: name,
                    exercisesData: exercisesData,
                  ),
                ),
              );
            }
          : null,
      child: Container(
        color: isTouchable ?? false ? Colors.black12 : Colors.white,
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Series: ',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '${series ?? 1}',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Visibility(
              visible: hasRep ?? false,
              child: Row(
                children: [
                  Text(
                    'Repeticiones: ',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '${rep ?? 1}',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: hasTime ?? false,
              child: Row(
                children: [
                  Text(
                    'Tiempo: ',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '${time ?? 0}',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: hasTurns ?? false,
              child: Row(
                children: [
                  Text(
                    'Vueltas: ',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '${turns ?? 0}',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: hasWeight ?? false,
              child: Row(
                children: [
                  Text(
                    'Peso: ',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '${repWeight ?? 0}',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: hasBreak ?? false,
              child: Row(
                children: [
                  Text(
                    'Descanso: ',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '${timeBreak ?? 0}',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Divider(thickness: 3.0, indent: 64.0, endIndent: 64.0),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Text('$name',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.end)),
            SizedBox(height: 32.0),
            Divider(thickness: 1.0, indent: 8.0, endIndent: 8.0),
          ],
        ),
      ),
    );
  }
}
