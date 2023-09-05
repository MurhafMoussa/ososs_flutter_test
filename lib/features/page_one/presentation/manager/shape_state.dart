part of 'shape_cubit.dart';

@freezed
class ShapeState with _$ShapeState {
  const factory ShapeState({required ShapeBorder shape, required Color color}) =
      _ShapeState;
}
