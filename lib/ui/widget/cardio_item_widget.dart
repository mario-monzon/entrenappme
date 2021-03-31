import 'package:flutter/material.dart';

class CardioItem extends StatelessWidget {
  final int tiempo;
  final int descanso;
  final int series;
  final String name;

  const CardioItem({
    Key key,
    this.tiempo,
    this.descanso,
    this.name,
    this.series,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Minutos',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
              Text('Descanso',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
              Text('Series',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('$tiempo',
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center),
              Text('$descanso',
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center),
              Text('$series',
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center),
            ],
          ),
          Container(
            child: Text('$name',
                style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
          ),
          SizedBox(
            height: 8.0,
          ),
          Divider(
            thickness: 2.0,
            indent: 8.0,
            endIndent: 8.0,
          ),
        ],
      ),
    );
  }
}
