// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'true_only_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrueOnlyFailure {
  String get message => throw _privateConstructorUsedError;
  CaughtException? get cause => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        oneIsNotTrueException,
    required TResult Function(String message, CaughtException? cause)
        falseIsNotAValidValueException,
    required TResult Function(String message, CaughtException? cause)
        booleanMalformedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        oneIsNotTrueException,
    TResult? Function(String message, CaughtException? cause)?
        falseIsNotAValidValueException,
    TResult? Function(String message, CaughtException? cause)?
        booleanMalformedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        oneIsNotTrueException,
    TResult Function(String message, CaughtException? cause)?
        falseIsNotAValidValueException,
    TResult Function(String message, CaughtException? cause)?
        booleanMalformedException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OneIsNotTrueException value)
        oneIsNotTrueException,
    required TResult Function(FalseIsNotAValidValueException value)
        falseIsNotAValidValueException,
    required TResult Function(BooleanMalformedException value)
        booleanMalformedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OneIsNotTrueException value)? oneIsNotTrueException,
    TResult? Function(FalseIsNotAValidValueException value)?
        falseIsNotAValidValueException,
    TResult? Function(BooleanMalformedException value)?
        booleanMalformedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OneIsNotTrueException value)? oneIsNotTrueException,
    TResult Function(FalseIsNotAValidValueException value)?
        falseIsNotAValidValueException,
    TResult Function(BooleanMalformedException value)?
        booleanMalformedException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrueOnlyFailureCopyWith<TrueOnlyFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrueOnlyFailureCopyWith<$Res> {
  factory $TrueOnlyFailureCopyWith(
          TrueOnlyFailure value, $Res Function(TrueOnlyFailure) then) =
      _$TrueOnlyFailureCopyWithImpl<$Res, TrueOnlyFailure>;
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class _$TrueOnlyFailureCopyWithImpl<$Res, $Val extends TrueOnlyFailure>
    implements $TrueOnlyFailureCopyWith<$Res> {
  _$TrueOnlyFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$OneIsNotTrueExceptionCopyWith<$Res>
    implements $TrueOnlyFailureCopyWith<$Res> {
  factory _$$OneIsNotTrueExceptionCopyWith(_$OneIsNotTrueException value,
          $Res Function(_$OneIsNotTrueException) then) =
      __$$OneIsNotTrueExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$OneIsNotTrueExceptionCopyWithImpl<$Res>
    extends _$TrueOnlyFailureCopyWithImpl<$Res, _$OneIsNotTrueException>
    implements _$$OneIsNotTrueExceptionCopyWith<$Res> {
  __$$OneIsNotTrueExceptionCopyWithImpl(_$OneIsNotTrueException _value,
      $Res Function(_$OneIsNotTrueException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$OneIsNotTrueException(
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

class _$OneIsNotTrueException implements OneIsNotTrueException {
  const _$OneIsNotTrueException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneIsNotTrueException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneIsNotTrueExceptionCopyWith<_$OneIsNotTrueException> get copyWith =>
      __$$OneIsNotTrueExceptionCopyWithImpl<_$OneIsNotTrueException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        oneIsNotTrueException,
    required TResult Function(String message, CaughtException? cause)
        falseIsNotAValidValueException,
    required TResult Function(String message, CaughtException? cause)
        booleanMalformedException,
  }) {
    return oneIsNotTrueException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        oneIsNotTrueException,
    TResult? Function(String message, CaughtException? cause)?
        falseIsNotAValidValueException,
    TResult? Function(String message, CaughtException? cause)?
        booleanMalformedException,
  }) {
    return oneIsNotTrueException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        oneIsNotTrueException,
    TResult Function(String message, CaughtException? cause)?
        falseIsNotAValidValueException,
    TResult Function(String message, CaughtException? cause)?
        booleanMalformedException,
    required TResult orElse(),
  }) {
    if (oneIsNotTrueException != null) {
      return oneIsNotTrueException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OneIsNotTrueException value)
        oneIsNotTrueException,
    required TResult Function(FalseIsNotAValidValueException value)
        falseIsNotAValidValueException,
    required TResult Function(BooleanMalformedException value)
        booleanMalformedException,
  }) {
    return oneIsNotTrueException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OneIsNotTrueException value)? oneIsNotTrueException,
    TResult? Function(FalseIsNotAValidValueException value)?
        falseIsNotAValidValueException,
    TResult? Function(BooleanMalformedException value)?
        booleanMalformedException,
  }) {
    return oneIsNotTrueException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OneIsNotTrueException value)? oneIsNotTrueException,
    TResult Function(FalseIsNotAValidValueException value)?
        falseIsNotAValidValueException,
    TResult Function(BooleanMalformedException value)?
        booleanMalformedException,
    required TResult orElse(),
  }) {
    if (oneIsNotTrueException != null) {
      return oneIsNotTrueException(this);
    }
    return orElse();
  }
}

abstract class OneIsNotTrueException
    implements TrueOnlyFailure, ThrowableException {
  const factory OneIsNotTrueException(
      [final String message,
      final CaughtException? cause]) = _$OneIsNotTrueException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$OneIsNotTrueExceptionCopyWith<_$OneIsNotTrueException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FalseIsNotAValidValueExceptionCopyWith<$Res>
    implements $TrueOnlyFailureCopyWith<$Res> {
  factory _$$FalseIsNotAValidValueExceptionCopyWith(
          _$FalseIsNotAValidValueException value,
          $Res Function(_$FalseIsNotAValidValueException) then) =
      __$$FalseIsNotAValidValueExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$FalseIsNotAValidValueExceptionCopyWithImpl<$Res>
    extends _$TrueOnlyFailureCopyWithImpl<$Res,
        _$FalseIsNotAValidValueException>
    implements _$$FalseIsNotAValidValueExceptionCopyWith<$Res> {
  __$$FalseIsNotAValidValueExceptionCopyWithImpl(
      _$FalseIsNotAValidValueException _value,
      $Res Function(_$FalseIsNotAValidValueException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$FalseIsNotAValidValueException(
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

class _$FalseIsNotAValidValueException
    implements FalseIsNotAValidValueException {
  const _$FalseIsNotAValidValueException(
      [this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FalseIsNotAValidValueException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FalseIsNotAValidValueExceptionCopyWith<_$FalseIsNotAValidValueException>
      get copyWith => __$$FalseIsNotAValidValueExceptionCopyWithImpl<
          _$FalseIsNotAValidValueException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        oneIsNotTrueException,
    required TResult Function(String message, CaughtException? cause)
        falseIsNotAValidValueException,
    required TResult Function(String message, CaughtException? cause)
        booleanMalformedException,
  }) {
    return falseIsNotAValidValueException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        oneIsNotTrueException,
    TResult? Function(String message, CaughtException? cause)?
        falseIsNotAValidValueException,
    TResult? Function(String message, CaughtException? cause)?
        booleanMalformedException,
  }) {
    return falseIsNotAValidValueException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        oneIsNotTrueException,
    TResult Function(String message, CaughtException? cause)?
        falseIsNotAValidValueException,
    TResult Function(String message, CaughtException? cause)?
        booleanMalformedException,
    required TResult orElse(),
  }) {
    if (falseIsNotAValidValueException != null) {
      return falseIsNotAValidValueException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OneIsNotTrueException value)
        oneIsNotTrueException,
    required TResult Function(FalseIsNotAValidValueException value)
        falseIsNotAValidValueException,
    required TResult Function(BooleanMalformedException value)
        booleanMalformedException,
  }) {
    return falseIsNotAValidValueException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OneIsNotTrueException value)? oneIsNotTrueException,
    TResult? Function(FalseIsNotAValidValueException value)?
        falseIsNotAValidValueException,
    TResult? Function(BooleanMalformedException value)?
        booleanMalformedException,
  }) {
    return falseIsNotAValidValueException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OneIsNotTrueException value)? oneIsNotTrueException,
    TResult Function(FalseIsNotAValidValueException value)?
        falseIsNotAValidValueException,
    TResult Function(BooleanMalformedException value)?
        booleanMalformedException,
    required TResult orElse(),
  }) {
    if (falseIsNotAValidValueException != null) {
      return falseIsNotAValidValueException(this);
    }
    return orElse();
  }
}

abstract class FalseIsNotAValidValueException
    implements TrueOnlyFailure, ThrowableException {
  const factory FalseIsNotAValidValueException(
      [final String message,
      final CaughtException? cause]) = _$FalseIsNotAValidValueException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$FalseIsNotAValidValueExceptionCopyWith<_$FalseIsNotAValidValueException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooleanMalformedExceptionCopyWith<$Res>
    implements $TrueOnlyFailureCopyWith<$Res> {
  factory _$$BooleanMalformedExceptionCopyWith(
          _$BooleanMalformedException value,
          $Res Function(_$BooleanMalformedException) then) =
      __$$BooleanMalformedExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$BooleanMalformedExceptionCopyWithImpl<$Res>
    extends _$TrueOnlyFailureCopyWithImpl<$Res, _$BooleanMalformedException>
    implements _$$BooleanMalformedExceptionCopyWith<$Res> {
  __$$BooleanMalformedExceptionCopyWithImpl(_$BooleanMalformedException _value,
      $Res Function(_$BooleanMalformedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$BooleanMalformedException(
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

class _$BooleanMalformedException implements BooleanMalformedException {
  const _$BooleanMalformedException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanMalformedException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanMalformedExceptionCopyWith<_$BooleanMalformedException>
      get copyWith => __$$BooleanMalformedExceptionCopyWithImpl<
          _$BooleanMalformedException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        oneIsNotTrueException,
    required TResult Function(String message, CaughtException? cause)
        falseIsNotAValidValueException,
    required TResult Function(String message, CaughtException? cause)
        booleanMalformedException,
  }) {
    return booleanMalformedException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        oneIsNotTrueException,
    TResult? Function(String message, CaughtException? cause)?
        falseIsNotAValidValueException,
    TResult? Function(String message, CaughtException? cause)?
        booleanMalformedException,
  }) {
    return booleanMalformedException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        oneIsNotTrueException,
    TResult Function(String message, CaughtException? cause)?
        falseIsNotAValidValueException,
    TResult Function(String message, CaughtException? cause)?
        booleanMalformedException,
    required TResult orElse(),
  }) {
    if (booleanMalformedException != null) {
      return booleanMalformedException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OneIsNotTrueException value)
        oneIsNotTrueException,
    required TResult Function(FalseIsNotAValidValueException value)
        falseIsNotAValidValueException,
    required TResult Function(BooleanMalformedException value)
        booleanMalformedException,
  }) {
    return booleanMalformedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OneIsNotTrueException value)? oneIsNotTrueException,
    TResult? Function(FalseIsNotAValidValueException value)?
        falseIsNotAValidValueException,
    TResult? Function(BooleanMalformedException value)?
        booleanMalformedException,
  }) {
    return booleanMalformedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OneIsNotTrueException value)? oneIsNotTrueException,
    TResult Function(FalseIsNotAValidValueException value)?
        falseIsNotAValidValueException,
    TResult Function(BooleanMalformedException value)?
        booleanMalformedException,
    required TResult orElse(),
  }) {
    if (booleanMalformedException != null) {
      return booleanMalformedException(this);
    }
    return orElse();
  }
}

abstract class BooleanMalformedException
    implements TrueOnlyFailure, ThrowableException {
  const factory BooleanMalformedException(
      [final String message,
      final CaughtException? cause]) = _$BooleanMalformedException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$BooleanMalformedExceptionCopyWith<_$BooleanMalformedException>
      get copyWith => throw _privateConstructorUsedError;
}
