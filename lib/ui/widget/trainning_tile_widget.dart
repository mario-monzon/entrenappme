import 'package:flutter/material.dart';

class TrainingTile extends StatefulWidget {
  final String title;
  final String routeName;

  // ignore: sort_constructors_first
  const TrainingTile({
    Key key,
    this.title,
    this.routeName,
  }) : super(key: key);

  @override
  _TrainingTileState createState() => _TrainingTileState();
}

class _TrainingTileState extends State<TrainingTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                Navigator.pushNamed(context, widget.routeName);
              },
            ),
          ),
          Divider(
            thickness: 4.0,
            indent: 8.0,
            endIndent: 8.0,
          ),
        ],
      ),
    );
  }
}
