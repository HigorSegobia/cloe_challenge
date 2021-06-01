import 'classes.dart';

class AppState {
  List<Classes> classes;
  bool isLoading;
  Exception error;

  AppState({this.error, this.isLoading, this.classes});

  factory AppState.initial() =>
      AppState(classes: [], isLoading: false, error: null);

  AppState copyWith(
      {List<Classes> classes,
      bool isLoading,
      int currentPage,
      Exception error}) {
    return AppState(
        classes: classes ?? this.classes,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error);
  }
}
