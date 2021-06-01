import 'package:flutter/material.dart';
import 'package:cloe_challenge/model/app_state.dart';
import 'package:cloe_challenge/model/classes.dart';
import 'package:cloe_challenge/redux/actions.dart';
import 'package:redux/redux.dart';

import 'classes_details.dart';

class ClassesViewModel {
  final Function() searchClasses;
  final Function(BuildContext, List<Classes>, int) goToDetails;
  final List<Classes> Function() classesList;
  final Function() fetchInitialSearch;
  final Function() isLoading;
  ClassesViewModel({
    this.searchClasses,
    this.goToDetails,
    this.classesList,
    this.fetchInitialSearch,
    this.isLoading,
  });
}

ClassesViewModel convert(Store<AppState> store) => ClassesViewModel(
    searchClasses: () => store.dispatch(SearchClasseAction()),
    goToDetails: (context, classes, value) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClasseDetails(classes, value),
          ),
        ),
    isLoading: () => store.state.isLoading,
    classesList: () => store.state.classes,
    fetchInitialSearch: () async {
      final searchClasseAction = SearchClasseAction();
      store.dispatch(searchClasseAction);
      if (await searchClasseAction.isDone.future) {
        store.dispatch(NavigateToListViewAction());
      }
    });
