part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.textFieldIsFull(String text) = _TextFieldIsFull;
  const factory HomeState.textFieldIsEmpty() = _TextFieldIsEmpty;
}
