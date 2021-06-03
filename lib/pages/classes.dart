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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.Styles.mainColor,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.fill,
              )),
            ),
          ),
          Expanded(
            child: StoreConnector<AppState, ClassesViewModel>(
              converter: convert,
              builder: (context, vm) {
                return NotificationListener<ScrollUpdateNotification>(
                  child: GridView.builder(
                      itemCount: vm.classesList().length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
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
