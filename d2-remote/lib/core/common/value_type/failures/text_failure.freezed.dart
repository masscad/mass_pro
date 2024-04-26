// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextFailure {
  String get message => throw _privateConstructorUsedError;
  CaughtException? get cause => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        tooLargeTextException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        tooLargeTextException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        tooLargeTextException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TooLargeTextException value)
        tooLargeTextException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TooLargeTextException value)? tooLargeTextException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TooLargeTextException value)? tooLargeTextException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextFailureCopyWith<TextFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFailureCopyWith<$Res> {
  factory $TextFailureCopyWith(
          TextFailure value, $Res Function(TextFailure) then) =
      _$TextFailureCopyWithImpl<$Res, TextFailure>;
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class _$TextFailureCopyWithImpl<$Res, $Val extends TextFailure>
    implements $TextFailureCopyWith<$Res> {
  _$TextFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      cause: freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as CaughtException?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TooLargeTextExceptionCopyWith<$Res>
    implements $TextFailureCopyWith<$Res> {
  factory _$$TooLargeTextExceptionCopyWith(_$TooLargeTextException value,
          $Res Function(_$TooLargeTextException) then) =
      __$$TooLargeTextExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$TooLargeTextExceptionCopyWithImpl<$Res>
    extends _$TextFailureCopyWithImpl<$Res, _$TooLargeTextException>
    implements _$$TooLargeTextExceptionCopyWith<$Res> {
  __$$TooLargeTextExceptionCopyWithImpl(_$TooLargeTextException _value,
      $Res Function(_$TooLargeTextException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$TooLargeTextException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as CaughtException?,
    ));
  }
}

/// @nodoc

class _$TooLargeTextException implements TooLargeTextException {
  const _$TooLargeTextException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooLargeTextException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooLargeTextExceptionCopyWith<_$TooLargeTextException> get copyWith =>
      __$$TooLargeTextExceptionCopyWithImpl<_$TooLargeTextException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        tooLargeTextException,
  }) {
    return tooLargeTextException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        tooLargeTextException,
  }) {
    return tooLargeTextException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        tooLargeTextException,
    required TResult orElse(),
  }) {
    if (tooLargeTextException != null) {
      return tooLargeTextException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TooLargeTextException value)
        tooLargeTextException,
  }) {
    return tooLargeTextException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TooLargeTextException value)? tooLargeTextException,
  }) {
    return tooLargeTextException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TooLargeTextException value)? tooLargeTextException,
    required TResult orElse(),
  }) {
    if (tooLargeTextException != null) {
      return tooLargeTextException(this);
    }
    return orElse();
  }
}

abstract class TooLargeTextException
    implements TextFailure, ThrowableException {
  const factory TooLargeTextException(
      [final String message,
      final CaughtException? cause]) = _$TooLargeTextException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$TooLargeTextExceptionCopyWith<_$TooLargeTextException> get copyWith =>
      throw _privateConstructorUsedError;
}
