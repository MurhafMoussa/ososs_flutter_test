import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) {
      event.map(
        started: (value) {},

        /// this event is only triggered when the empty row is clicked
        /// it clears the text field and resets the text widget to the initial value
        textFieldEmptied: (value) {
          controller.clear();
          emit(
            const HomeState.textFieldIsEmpty(),
          );
        },

        /// in this event we update the text widget according to the user input
        /// and when the field is empty we clear the field and reset the text widget
        /// to the initial value
        textFieldFilled: (value) {
          if (value.text.isEmpty) {
            controller.clear();
            emit(
              const HomeState.textFieldIsEmpty(),
            );
          } else {
            emit(
              HomeState.textFieldIsFull(value.text),
            );
          }
        },
      );
    });
  }

  /// this controller is only needed to clear the text field
  final TextEditingController controller = TextEditingController();
  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
