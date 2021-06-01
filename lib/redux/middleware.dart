import 'package:flutter/material.dart';
import 'package:cloe_challenge/main.dart';
import 'package:cloe_challenge/model/app_state.dart';
import 'package:cloe_challenge/pages/classes.dart';
import 'package:cloe_challenge/redux/actions.dart';
import 'package:cloe_challenge/repositories/classes_repository_impl.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createAppMiddleware() => [
      TypedMiddleware<AppState, SearchClasseAction>(searchClasseMiddleware()),
      TypedMiddleware<AppState, NavigateToListViewAction>(
          navigateToListViewMiddleware()),
    ];

Middleware<AppState> searchClasseMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) async {
    store.dispatch(IsLoadingAction(true));
    final newClasses = await ClassesRepositoryImpl().getClasse();
    store.dispatch(DisplayClasseListAction(newClasses));
    store.dispatch(IncrementCurrentPageAction());
    action.isDone.complete(true);
    store.dispatch(IsLoadingAction(false));
  };
}

Middleware<AppState> navigateToListViewMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) {
    navigatorKey.currentState.pushReplacement(
        MaterialPageRoute(builder: (context) => ClassesView()));
  };
}
