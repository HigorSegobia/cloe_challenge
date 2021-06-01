import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:cloe_challenge/model/app_state.dart';
import 'package:cloe_challenge/pages/classes_viewmodel.dart';
import 'package:cloe_challenge/styles/style.dart' as Theme;
import 'package:cloe_challenge/widgets/list_classes.dart';

class ClassesView extends StatefulWidget {
  ClassesView({Key key}) : super(key: key);
  @override
  _ClassesViewState createState() => _ClassesViewState();
}

class _ClassesViewState extends State<ClassesView> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.Styles.mainColor,
      appBar: AppBar(
        backgroundColor: Theme.Styles.secondColor,
        centerTitle: true,
        title: Text('Cloe'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: StoreConnector<AppState, ClassesViewModel>(
              converter: convert,
              builder: (context, vm) {
                return NotificationListener<ScrollUpdateNotification>(
                  child: ListView.builder(
                      controller: _scrollController,
                      itemCount: vm.classesList().length,
                      itemBuilder: (context, value) {
                        return TextButton(
                          child: ClasseCard(vm.classesList(), value),
                          onPressed: () {
                            vm.goToDetails(context, vm.classesList(), value);
                          },
                        );
                      }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
