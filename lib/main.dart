import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:cloe_challenge/pages/loading_screen.dart';
import 'package:cloe_challenge/redux/middleware.dart';
import 'package:cloe_challenge/redux/reducer.dart';
import 'package:redux/redux.dart';

import 'model/app_state.dart';

void main() {
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: createAppMiddleware(),
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              backgroundColor: Colors.white),
          home: LoadingScreen(),
          navigatorKey: navigatorKey,
        ));
  }
}
