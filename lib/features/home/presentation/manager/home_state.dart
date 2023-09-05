part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.textFieldControllerIsFull(String text) =
      _TextFieldControllerIsFull;
  const factory HomeState.textFieldControllerIsEmpty() =
      _TextFieldControllerIsEmpty;
}
