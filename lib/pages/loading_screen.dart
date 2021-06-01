import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:cloe_challenge/model/app_state.dart';
import 'package:cloe_challenge/pages/classes_viewmodel.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ClassesViewModel>(
      onInitialBuild: (store) {
        store.fetchInitialSearch();
      },
      converter: convert,
      builder: (BuildContext context, _) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
