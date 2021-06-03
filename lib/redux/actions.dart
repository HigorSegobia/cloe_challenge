import 'dart:async';

import 'package:cloe_challenge/model/classes.dart';

class SearchClasseAction {
  final Completer isDone;

  SearchClasseAction({Completer isDone}) : this.isDone = isDone ?? Completer();
}

class DisplayClasseListAction {
  final List<Classes> classes;

  DisplayClasseListAction(this.classes);
}

class NavigateToListViewAction {}

class IsLoadingAction {
  final bool isLoading;

  IsLoadingAction(this.isLoading);
}
