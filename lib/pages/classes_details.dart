import 'package:flutter/material.dart';
import 'package:cloe_challenge/model/classes.dart';
import 'package:cloe_challenge/styles/style.dart' as Theme;

class ClasseDetails extends StatefulWidget {
  final List<Classes> classes;
  final int index;

  ClasseDetails(this.classes, this.index);

  @override
  _ClasseDetailsState createState() => _ClasseDetailsState();
}

class _ClasseDetailsState extends State<ClasseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aula ' + widget.classes[widget.index].id.toString()),
        backgroundColor: Theme.Styles.secondColor,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('${widget.classes[widget.index].image}'),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              widget.classes[widget.index].title,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.Styles.mainColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Text(
              widget.classes[widget.index].description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
