import 'package:cloe_challenge/model/app_state.dart';
import 'package:cloe_challenge/model/classes.dart';
import 'package:cloe_challenge/redux/actions.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, action) {
  return state.copyWith(
      classes: classReducer(state.classes, action),
      isLoading: loadingReducer(state.isLoading, action));
}

final Reducer<List<Classes>> classReducer = combineReducers<List<Classes>>([
  TypedReducer<List<Classes>, DisplayClasseListAction>(displayClassListReducer),
]);

final Reducer<bool> loadingReducer = combineReducers<bool>([
  TypedReducer<bool, IsLoadingAction>(isLoadingReducer),
]);

List<Classes> displayClassListReducer(List<Classes> classes, action) {
  return classes..addAll(action.classes);
}

bool isLoadingReducer(_, action) {
  return action.isLoading;
}
