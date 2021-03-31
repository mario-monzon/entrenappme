import 'package:flutter/material.dart';

class ExerciseDetail extends StatelessWidget {
  static final String routeName = 'detail';
  final String title;
  final List<String> exercisesData;

  // ignore: sort_constructors_first
  const ExerciseDetail({
    Key key,
    this.title,
    this.exercisesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int exercisesDataCount = exercisesData.length;
    final ScrollController _scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: exercisesDataCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(
              '${index + 1}.- ${exercisesData[index]}',
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
          );
        },
      ),
    );
  }
}
