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
        title: Text('Classe Details'),
        backgroundColor: Theme.Styles.secondColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        NetworkImage('${widget.classes[widget.index].image}'),
                    fit: BoxFit.cover),
              ),
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
            padding: const EdgeInsets.all(10.0),
            child: Text(
              widget.classes[widget.index].description,
              maxLines: 4,
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
