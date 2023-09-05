// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textFieldChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextFieldChanged value) textFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextFieldChanged value)? textFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextFieldChanged value)? textFieldChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textFieldChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textFieldChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textFieldChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextFieldChanged value) textFieldChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextFieldChanged value)? textFieldChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextFieldChanged value)? textFieldChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_TextFieldChangedCopyWith<$Res> {
  factory _$$_TextFieldChangedCopyWith(
          _$_TextFieldChanged value, $Res Function(_$_TextFieldChanged) then) =
      __$$_TextFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_TextFieldChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_TextFieldChanged>
    implements _$$_TextFieldChangedCopyWith<$Res> {
  __$$_TextFieldChangedCopyWithImpl(
      _$_TextFieldChanged _value, $Res Function(_$_TextFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_TextFieldChanged(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextFieldChanged implements _TextFieldChanged {
  const _$_TextFieldChanged(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'HomeEvent.textFieldChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextFieldChanged &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextFieldChangedCopyWith<_$_TextFieldChanged> get copyWith =>
      __$$_TextFieldChangedCopyWithImpl<_$_TextFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textFieldChanged,
  }) {
    return textFieldChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textFieldChanged,
  }) {
    return textFieldChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textFieldChanged,
    required TResult orElse(),
  }) {
    if (textFieldChanged != null) {
      return textFieldChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextFieldChanged value) textFieldChanged,
  }) {
    return textFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextFieldChanged value)? textFieldChanged,
  }) {
    return textFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextFieldChanged value)? textFieldChanged,
    required TResult orElse(),
  }) {
    if (textFieldChanged != null) {
      return textFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _TextFieldChanged implements HomeEvent {
  const factory _TextFieldChanged(final String text) = _$_TextFieldChanged;

  String get text;
  @JsonKey(ignore: true)
  _$$_TextFieldChangedCopyWith<_$_TextFieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text) textFieldControllerIsFull,
    required TResult Function() textFieldControllerIsEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? textFieldControllerIsFull,
    TResult? Function()? textFieldControllerIsEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? textFieldControllerIsFull,
    TResult Function()? textFieldControllerIsEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TextFieldControllerIsFull value)
        textFieldControllerIsFull,
    required TResult Function(_TextFieldControllerIsEmpty value)
        textFieldControllerIsEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TextFieldControllerIsFull value)?
        textFieldControllerIsFull,
    TResult? Function(_TextFieldControllerIsEmpty value)?
        textFieldControllerIsEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TextFieldControllerIsFull value)?
        textFieldControllerIsFull,
    TResult Function(_TextFieldControllerIsEmpty value)?
        textFieldControllerIsEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text) textFieldControllerIsFull,
    required TResult Function() textFieldControllerIsEmpty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? textFieldControllerIsFull,
    TResult? Function()? textFieldControllerIsEmpty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? textFieldControllerIsFull,
    TResult Function()? textFieldControllerIsEmpty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TextFieldControllerIsFull value)
        textFieldControllerIsFull,
    required TResult Function(_TextFieldControllerIsEmpty value)
        textFieldControllerIsEmpty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TextFieldControllerIsFull value)?
        textFieldControllerIsFull,
    TResult? Function(_TextFieldControllerIsEmpty value)?
        textFieldControllerIsEmpty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TextFieldControllerIsFull value)?
        textFieldControllerIsFull,
    TResult Function(_TextFieldControllerIsEmpty value)?
        textFieldControllerIsEmpty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_TextFieldControllerIsFullCopyWith<$Res> {
  factory _$$_TextFieldControllerIsFullCopyWith(
          _$_TextFieldControllerIsFull value,
          $Res Function(_$_TextFieldControllerIsFull) then) =
      __$$_TextFieldControllerIsFullCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_TextFieldControllerIsFullCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_TextFieldControllerIsFull>
    implements _$$_TextFieldControllerIsFullCopyWith<$Res> {
  __$$_TextFieldControllerIsFullCopyWithImpl(
      _$_TextFieldControllerIsFull _value,
      $Res Function(_$_TextFieldControllerIsFull) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_TextFieldControllerIsFull(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextFieldControllerIsFull implements _TextFieldControllerIsFull {
  const _$_TextFieldControllerIsFull(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'HomeState.textFieldControllerIsFull(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextFieldControllerIsFull &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextFieldControllerIsFullCopyWith<_$_TextFieldControllerIsFull>
      get copyWith => __$$_TextFieldControllerIsFullCopyWithImpl<
          _$_TextFieldControllerIsFull>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text) textFieldControllerIsFull,
    required TResult Function() textFieldControllerIsEmpty,
  }) {
    return textFieldControllerIsFull(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? textFieldControllerIsFull,
    TResult? Function()? textFieldControllerIsEmpty,
  }) {
    return textFieldControllerIsFull?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? textFieldControllerIsFull,
    TResult Function()? textFieldControllerIsEmpty,
    required TResult orElse(),
  }) {
    if (textFieldControllerIsFull != null) {
      return textFieldControllerIsFull(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TextFieldControllerIsFull value)
        textFieldControllerIsFull,
    required TResult Function(_TextFieldControllerIsEmpty value)
        textFieldControllerIsEmpty,
  }) {
    return textFieldControllerIsFull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TextFieldControllerIsFull value)?
        textFieldControllerIsFull,
    TResult? Function(_TextFieldControllerIsEmpty value)?
        textFieldControllerIsEmpty,
  }) {
    return textFieldControllerIsFull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TextFieldControllerIsFull value)?
        textFieldControllerIsFull,
    TResult Function(_TextFieldControllerIsEmpty value)?
        textFieldControllerIsEmpty,
    required TResult orElse(),
  }) {
    if (textFieldControllerIsFull != null) {
      return textFieldControllerIsFull(this);
    }
    return orElse();
  }
}

abstract class _TextFieldControllerIsFull implements HomeState {
  const factory _TextFieldControllerIsFull(final String text) =
      _$_TextFieldControllerIsFull;

  String get text;
  @JsonKey(ignore: true)
  _$$_TextFieldControllerIsFullCopyWith<_$_TextFieldControllerIsFull>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TextFieldControllerIsEmptyCopyWith<$Res> {
  factory _$$_TextFieldControllerIsEmptyCopyWith(
          _$_TextFieldControllerIsEmpty value,
          $Res Function(_$_TextFieldControllerIsEmpty) then) =
      __$$_TextFieldControllerIsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TextFieldControllerIsEmptyCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_TextFieldControllerIsEmpty>
    implements _$$_TextFieldControllerIsEmptyCopyWith<$Res> {
  __$$_TextFieldControllerIsEmptyCopyWithImpl(
      _$_TextFieldControllerIsEmpty _value,
      $Res Function(_$_TextFieldControllerIsEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TextFieldControllerIsEmpty implements _TextFieldControllerIsEmpty {
  const _$_TextFieldControllerIsEmpty();

  @override
  String toString() {
    return 'HomeState.textFieldControllerIsEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextFieldControllerIsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text) textFieldControllerIsFull,
    required TResult Function() textFieldControllerIsEmpty,
  }) {
    return textFieldControllerIsEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? textFieldControllerIsFull,
    TResult? Function()? textFieldControllerIsEmpty,
  }) {
    return textFieldControllerIsEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? textFieldControllerIsFull,
    TResult Function()? textFieldControllerIsEmpty,
    required TResult orElse(),
  }) {
    if (textFieldControllerIsEmpty != null) {
      return textFieldControllerIsEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TextFieldControllerIsFull value)
        textFieldControllerIsFull,
    required TResult Function(_TextFieldControllerIsEmpty value)
        textFieldControllerIsEmpty,
  }) {
    return textFieldControllerIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TextFieldControllerIsFull value)?
        textFieldControllerIsFull,
    TResult? Function(_TextFieldControllerIsEmpty value)?
        textFieldControllerIsEmpty,
  }) {
    return textFieldControllerIsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TextFieldControllerIsFull value)?
        textFieldControllerIsFull,
    TResult Function(_TextFieldControllerIsEmpty value)?
        textFieldControllerIsEmpty,
    required TResult orElse(),
  }) {
    if (textFieldControllerIsEmpty != null) {
      return textFieldControllerIsEmpty(this);
    }
    return orElse();
  }
}

abstract class _TextFieldControllerIsEmpty implements HomeState {
  const factory _TextFieldControllerIsEmpty() = _$_TextFieldControllerIsEmpty;
}
