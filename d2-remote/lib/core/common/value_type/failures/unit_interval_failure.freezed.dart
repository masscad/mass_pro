// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_interval_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnitIntervalFailure {
  String get message => throw _privateConstructorUsedError;
  CaughtException? get cause => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        scientificNotationException,
    required TResult Function(String message, CaughtException? cause)
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        greaterThanOneException,
    required TResult Function(String message, CaughtException? cause)
        smallerThanZeroException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult? Function(String message, CaughtException? cause)?
        smallerThanZeroException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult Function(String message, CaughtException? cause)?
        smallerThanZeroException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScientificNotationException value)
        scientificNotationException,
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(GreaterThanOneException value)
        greaterThanOneException,
    required TResult Function(SmallerThanZeroException value)
        smallerThanZeroException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScientificNotationException value)?
        scientificNotationException,
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(GreaterThanOneException value)? greaterThanOneException,
    TResult? Function(SmallerThanZeroException value)? smallerThanZeroException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScientificNotationException value)?
        scientificNotationException,
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(GreaterThanOneException value)? greaterThanOneException,
    TResult Function(SmallerThanZeroException value)? smallerThanZeroException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitIntervalFailureCopyWith<UnitIntervalFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitIntervalFailureCopyWith<$Res> {
  factory $UnitIntervalFailureCopyWith(
          UnitIntervalFailure value, $Res Function(UnitIntervalFailure) then) =
      _$UnitIntervalFailureCopyWithImpl<$Res, UnitIntervalFailure>;
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class _$UnitIntervalFailureCopyWithImpl<$Res, $Val extends UnitIntervalFailure>
    implements $UnitIntervalFailureCopyWith<$Res> {
  _$UnitIntervalFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$ScientificNotationExceptionCopyWith<$Res>
    implements $UnitIntervalFailureCopyWith<$Res> {
  factory _$$ScientificNotationExceptionCopyWith(
          _$ScientificNotationException value,
          $Res Function(_$ScientificNotationException) then) =
      __$$ScientificNotationExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$ScientificNotationExceptionCopyWithImpl<$Res>
    extends _$UnitIntervalFailureCopyWithImpl<$Res,
        _$ScientificNotationException>
    implements _$$ScientificNotationExceptionCopyWith<$Res> {
  __$$ScientificNotationExceptionCopyWithImpl(
      _$ScientificNotationException _value,
      $Res Function(_$ScientificNotationException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$ScientificNotationException(
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

class _$ScientificNotationException implements ScientificNotationException {
  const _$ScientificNotationException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScientificNotationException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScientificNotationExceptionCopyWith<_$ScientificNotationException>
      get copyWith => __$$ScientificNotationExceptionCopyWithImpl<
          _$ScientificNotationException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        scientificNotationException,
    required TResult Function(String message, CaughtException? cause)
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        greaterThanOneException,
    required TResult Function(String message, CaughtException? cause)
        smallerThanZeroException,
  }) {
    return scientificNotationException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult? Function(String message, CaughtException? cause)?
        smallerThanZeroException,
  }) {
    return scientificNotationException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult Function(String message, CaughtException? cause)?
        smallerThanZeroException,
    required TResult orElse(),
  }) {
    if (scientificNotationException != null) {
      return scientificNotationException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScientificNotationException value)
        scientificNotationException,
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(GreaterThanOneException value)
        greaterThanOneException,
    required TResult Function(SmallerThanZeroException value)
        smallerThanZeroException,
  }) {
    return scientificNotationException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScientificNotationException value)?
        scientificNotationException,
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(GreaterThanOneException value)? greaterThanOneException,
    TResult? Function(SmallerThanZeroException value)? smallerThanZeroException,
  }) {
    return scientificNotationException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScientificNotationException value)?
        scientificNotationException,
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(GreaterThanOneException value)? greaterThanOneException,
    TResult Function(SmallerThanZeroException value)? smallerThanZeroException,
    required TResult orElse(),
  }) {
    if (scientificNotationException != null) {
      return scientificNotationException(this);
    }
    return orElse();
  }
}

abstract class ScientificNotationException
    implements UnitIntervalFailure, ThrowableException {
  const factory ScientificNotationException(
      [final String message,
      final CaughtException? cause]) = _$ScientificNotationException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$ScientificNotationExceptionCopyWith<_$ScientificNotationException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberFormatExceptionCopyWith<$Res>
    implements $UnitIntervalFailureCopyWith<$Res> {
  factory _$$NumberFormatExceptionCopyWith(_$NumberFormatException value,
          $Res Function(_$NumberFormatException) then) =
      __$$NumberFormatExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$NumberFormatExceptionCopyWithImpl<$Res>
    extends _$UnitIntervalFailureCopyWithImpl<$Res, _$NumberFormatException>
    implements _$$NumberFormatExceptionCopyWith<$Res> {
  __$$NumberFormatExceptionCopyWithImpl(_$NumberFormatException _value,
      $Res Function(_$NumberFormatException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$NumberFormatException(
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

class _$NumberFormatException implements NumberFormatException {
  const _$NumberFormatException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberFormatException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberFormatExceptionCopyWith<_$NumberFormatException> get copyWith =>
      __$$NumberFormatExceptionCopyWithImpl<_$NumberFormatException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        scientificNotationException,
    required TResult Function(String message, CaughtException? cause)
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        greaterThanOneException,
    required TResult Function(String message, CaughtException? cause)
        smallerThanZeroException,
  }) {
    return numberFormatException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult? Function(String message, CaughtException? cause)?
        smallerThanZeroException,
  }) {
    return numberFormatException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult Function(String message, CaughtException? cause)?
        smallerThanZeroException,
    required TResult orElse(),
  }) {
    if (numberFormatException != null) {
      return numberFormatException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScientificNotationException value)
        scientificNotationException,
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(GreaterThanOneException value)
        greaterThanOneException,
    required TResult Function(SmallerThanZeroException value)
        smallerThanZeroException,
  }) {
    return numberFormatException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScientificNotationException value)?
        scientificNotationException,
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(GreaterThanOneException value)? greaterThanOneException,
    TResult? Function(SmallerThanZeroException value)? smallerThanZeroException,
  }) {
    return numberFormatException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScientificNotationException value)?
        scientificNotationException,
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(GreaterThanOneException value)? greaterThanOneException,
    TResult Function(SmallerThanZeroException value)? smallerThanZeroException,
    required TResult orElse(),
  }) {
    if (numberFormatException != null) {
      return numberFormatException(this);
    }
    return orElse();
  }
}

abstract class NumberFormatException
    implements UnitIntervalFailure, ThrowableException {
  const factory NumberFormatException(
      [final String message,
      final CaughtException? cause]) = _$NumberFormatException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$NumberFormatExceptionCopyWith<_$NumberFormatException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GreaterThanOneExceptionCopyWith<$Res>
    implements $UnitIntervalFailureCopyWith<$Res> {
  factory _$$GreaterThanOneExceptionCopyWith(_$GreaterThanOneException value,
          $Res Function(_$GreaterThanOneException) then) =
      __$$GreaterThanOneExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$GreaterThanOneExceptionCopyWithImpl<$Res>
    extends _$UnitIntervalFailureCopyWithImpl<$Res, _$GreaterThanOneException>
    implements _$$GreaterThanOneExceptionCopyWith<$Res> {
  __$$GreaterThanOneExceptionCopyWithImpl(_$GreaterThanOneException _value,
      $Res Function(_$GreaterThanOneException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$GreaterThanOneException(
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

class _$GreaterThanOneException implements GreaterThanOneException {
  const _$GreaterThanOneException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreaterThanOneException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GreaterThanOneExceptionCopyWith<_$GreaterThanOneException> get copyWith =>
      __$$GreaterThanOneExceptionCopyWithImpl<_$GreaterThanOneException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        scientificNotationException,
    required TResult Function(String message, CaughtException? cause)
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        greaterThanOneException,
    required TResult Function(String message, CaughtException? cause)
        smallerThanZeroException,
  }) {
    return greaterThanOneException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult? Function(String message, CaughtException? cause)?
        smallerThanZeroException,
  }) {
    return greaterThanOneException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult Function(String message, CaughtException? cause)?
        smallerThanZeroException,
    required TResult orElse(),
  }) {
    if (greaterThanOneException != null) {
      return greaterThanOneException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScientificNotationException value)
        scientificNotationException,
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(GreaterThanOneException value)
        greaterThanOneException,
    required TResult Function(SmallerThanZeroException value)
        smallerThanZeroException,
  }) {
    return greaterThanOneException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScientificNotationException value)?
        scientificNotationException,
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(GreaterThanOneException value)? greaterThanOneException,
    TResult? Function(SmallerThanZeroException value)? smallerThanZeroException,
  }) {
    return greaterThanOneException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScientificNotationException value)?
        scientificNotationException,
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(GreaterThanOneException value)? greaterThanOneException,
    TResult Function(SmallerThanZeroException value)? smallerThanZeroException,
    required TResult orElse(),
  }) {
    if (greaterThanOneException != null) {
      return greaterThanOneException(this);
    }
    return orElse();
  }
}

abstract class GreaterThanOneException
    implements UnitIntervalFailure, ThrowableException {
  const factory GreaterThanOneException(
      [final String message,
      final CaughtException? cause]) = _$GreaterThanOneException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$GreaterThanOneExceptionCopyWith<_$GreaterThanOneException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmallerThanZeroExceptionCopyWith<$Res>
    implements $UnitIntervalFailureCopyWith<$Res> {
  factory _$$SmallerThanZeroExceptionCopyWith(_$SmallerThanZeroException value,
          $Res Function(_$SmallerThanZeroException) then) =
      __$$SmallerThanZeroExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$SmallerThanZeroExceptionCopyWithImpl<$Res>
    extends _$UnitIntervalFailureCopyWithImpl<$Res, _$SmallerThanZeroException>
    implements _$$SmallerThanZeroExceptionCopyWith<$Res> {
  __$$SmallerThanZeroExceptionCopyWithImpl(_$SmallerThanZeroException _value,
      $Res Function(_$SmallerThanZeroException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$SmallerThanZeroException(
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

class _$SmallerThanZeroException implements SmallerThanZeroException {
  const _$SmallerThanZeroException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmallerThanZeroException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmallerThanZeroExceptionCopyWith<_$SmallerThanZeroException>
      get copyWith =>
          __$$SmallerThanZeroExceptionCopyWithImpl<_$SmallerThanZeroException>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        scientificNotationException,
    required TResult Function(String message, CaughtException? cause)
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        greaterThanOneException,
    required TResult Function(String message, CaughtException? cause)
        smallerThanZeroException,
  }) {
    return smallerThanZeroException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult? Function(String message, CaughtException? cause)?
        smallerThanZeroException,
  }) {
    return smallerThanZeroException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        scientificNotationException,
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        greaterThanOneException,
    TResult Function(String message, CaughtException? cause)?
        smallerThanZeroException,
    required TResult orElse(),
  }) {
    if (smallerThanZeroException != null) {
      return smallerThanZeroException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScientificNotationException value)
        scientificNotationException,
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(GreaterThanOneException value)
        greaterThanOneException,
    required TResult Function(SmallerThanZeroException value)
        smallerThanZeroException,
  }) {
    return smallerThanZeroException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScientificNotationException value)?
        scientificNotationException,
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(GreaterThanOneException value)? greaterThanOneException,
    TResult? Function(SmallerThanZeroException value)? smallerThanZeroException,
  }) {
    return smallerThanZeroException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScientificNotationException value)?
        scientificNotationException,
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(GreaterThanOneException value)? greaterThanOneException,
    TResult Function(SmallerThanZeroException value)? smallerThanZeroException,
    required TResult orElse(),
  }) {
    if (smallerThanZeroException != null) {
      return smallerThanZeroException(this);
    }
    return orElse();
  }
}

abstract class SmallerThanZeroException
    implements UnitIntervalFailure, ThrowableException {
  const factory SmallerThanZeroException(
      [final String message,
      final CaughtException? cause]) = _$SmallerThanZeroException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$SmallerThanZeroExceptionCopyWith<_$SmallerThanZeroException>
      get copyWith => throw _privateConstructorUsedError;
}
