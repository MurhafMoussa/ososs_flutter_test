import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ososs_flutter_test/core/resources/border_raduis_manager.dart';
import 'package:ososs_flutter_test/core/resources/color_manager.dart';

part 'shape_state.dart';
part 'shape_cubit.freezed.dart';

class ShapeCubit extends Cubit<ShapeState> {
  ShapeCubit()
      : super(
          ShapeState(
            color: ColorManager.darkBlue,
            shape: const RoundedRectangleBorder(),
          ),
        );

  /// I think the best choice here to use an enum to select the shape
  /// instead of status codes or strings in order to prevent runtime errors
  void selectShape(Shape selectedShape) {
    switch (selectedShape) {
      case Shape.circle:
        emit(
          const ShapeState(
            shape: CircleBorder(),
            color: Colors.redAccent,
          ),
        );
        break;
      case Shape.sharpSquare:
        emit(
          ShapeState(
            shape: const RoundedRectangleBorder(),
            color: ColorManager.darkBlue,
          ),
        );
        break;
      case Shape.roundedSquare:
        emit(
          ShapeState(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusManager.radiusAll40,
            ),
            color: ColorManager.lightBlue,
          ),
        );
        break;
    }
  }
}

enum Shape {
  circle,
  sharpSquare,
  roundedSquare,
}
