// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'percentage_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PercentageFailure {
  String get message => throw _privateConstructorUsedError;
  CaughtException? get cause => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        valueGreaterThan100,
    required TResult Function(String message, CaughtException? cause)
        valueIsNegative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        valueGreaterThan100,
    TResult? Function(String message, CaughtException? cause)? valueIsNegative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        valueGreaterThan100,
    TResult Function(String message, CaughtException? cause)? valueIsNegative,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(ValueGreaterThan100 value) valueGreaterThan100,
    required TResult Function(ValueIsNegative value) valueIsNegative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(ValueGreaterThan100 value)? valueGreaterThan100,
    TResult? Function(ValueIsNegative value)? valueIsNegative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(ValueGreaterThan100 value)? valueGreaterThan100,
    TResult Function(ValueIsNegative value)? valueIsNegative,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PercentageFailureCopyWith<PercentageFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PercentageFailureCopyWith<$Res> {
  factory $PercentageFailureCopyWith(
          PercentageFailure value, $Res Function(PercentageFailure) then) =
      _$PercentageFailureCopyWithImpl<$Res, PercentageFailure>;
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class _$PercentageFailureCopyWithImpl<$Res, $Val extends PercentageFailure>
    implements $PercentageFailureCopyWith<$Res> {
  _$PercentageFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$NumberFormatExceptionCopyWith<$Res>
    implements $PercentageFailureCopyWith<$Res> {
  factory _$$NumberFormatExceptionCopyWith(_$NumberFormatException value,
          $Res Function(_$NumberFormatException) then) =
      __$$NumberFormatExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$NumberFormatExceptionCopyWithImpl<$Res>
    extends _$PercentageFailureCopyWithImpl<$Res, _$NumberFormatException>
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
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        valueGreaterThan100,
    required TResult Function(String message, CaughtException? cause)
        valueIsNegative,
  }) {
    return numberFormatException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        valueGreaterThan100,
    TResult? Function(String message, CaughtException? cause)? valueIsNegative,
  }) {
    return numberFormatException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        valueGreaterThan100,
    TResult Function(String message, CaughtException? cause)? valueIsNegative,
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
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(ValueGreaterThan100 value) valueGreaterThan100,
    required TResult Function(ValueIsNegative value) valueIsNegative,
  }) {
    return numberFormatException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(ValueGreaterThan100 value)? valueGreaterThan100,
    TResult? Function(ValueIsNegative value)? valueIsNegative,
  }) {
    return numberFormatException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(ValueGreaterThan100 value)? valueGreaterThan100,
    TResult Function(ValueIsNegative value)? valueIsNegative,
    required TResult orElse(),
  }) {
    if (numberFormatException != null) {
      return numberFormatException(this);
    }
    return orElse();
  }
}

abstract class NumberFormatException
    implements PercentageFailure, ThrowableException {
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
abstract class _$$ValueGreaterThan100CopyWith<$Res>
    implements $PercentageFailureCopyWith<$Res> {
  factory _$$ValueGreaterThan100CopyWith(_$ValueGreaterThan100 value,
          $Res Function(_$ValueGreaterThan100) then) =
      __$$ValueGreaterThan100CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$ValueGreaterThan100CopyWithImpl<$Res>
    extends _$PercentageFailureCopyWithImpl<$Res, _$ValueGreaterThan100>
    implements _$$ValueGreaterThan100CopyWith<$Res> {
  __$$ValueGreaterThan100CopyWithImpl(
      _$ValueGreaterThan100 _value, $Res Function(_$ValueGreaterThan100) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$ValueGreaterThan100(
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

class _$ValueGreaterThan100 implements ValueGreaterThan100 {
  const _$ValueGreaterThan100([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueGreaterThan100 &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueGreaterThan100CopyWith<_$ValueGreaterThan100> get copyWith =>
      __$$ValueGreaterThan100CopyWithImpl<_$ValueGreaterThan100>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        valueGreaterThan100,
    required TResult Function(String message, CaughtException? cause)
        valueIsNegative,
  }) {
    return valueGreaterThan100(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        valueGreaterThan100,
    TResult? Function(String message, CaughtException? cause)? valueIsNegative,
  }) {
    return valueGreaterThan100?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        valueGreaterThan100,
    TResult Function(String message, CaughtException? cause)? valueIsNegative,
    required TResult orElse(),
  }) {
    if (valueGreaterThan100 != null) {
      return valueGreaterThan100(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(ValueGreaterThan100 value) valueGreaterThan100,
    required TResult Function(ValueIsNegative value) valueIsNegative,
  }) {
    return valueGreaterThan100(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(ValueGreaterThan100 value)? valueGreaterThan100,
    TResult? Function(ValueIsNegative value)? valueIsNegative,
  }) {
    return valueGreaterThan100?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(ValueGreaterThan100 value)? valueGreaterThan100,
    TResult Function(ValueIsNegative value)? valueIsNegative,
    required TResult orElse(),
  }) {
    if (valueGreaterThan100 != null) {
      return valueGreaterThan100(this);
    }
    return orElse();
  }
}

abstract class ValueGreaterThan100
    implements PercentageFailure, ThrowableException {
  const factory ValueGreaterThan100(
      [final String message,
      final CaughtException? cause]) = _$ValueGreaterThan100;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$ValueGreaterThan100CopyWith<_$ValueGreaterThan100> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueIsNegativeCopyWith<$Res>
    implements $PercentageFailureCopyWith<$Res> {
  factory _$$ValueIsNegativeCopyWith(
          _$ValueIsNegative value, $Res Function(_$ValueIsNegative) then) =
      __$$ValueIsNegativeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$ValueIsNegativeCopyWithImpl<$Res>
    extends _$PercentageFailureCopyWithImpl<$Res, _$ValueIsNegative>
    implements _$$ValueIsNegativeCopyWith<$Res> {
  __$$ValueIsNegativeCopyWithImpl(
      _$ValueIsNegative _value, $Res Function(_$ValueIsNegative) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$ValueIsNegative(
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

class _$ValueIsNegative implements ValueIsNegative {
  const _$ValueIsNegative([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueIsNegative &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueIsNegativeCopyWith<_$ValueIsNegative> get copyWith =>
      __$$ValueIsNegativeCopyWithImpl<_$ValueIsNegative>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        numberFormatException,
    required TResult Function(String message, CaughtException? cause)
        valueGreaterThan100,
    required TResult Function(String message, CaughtException? cause)
        valueIsNegative,
  }) {
    return valueIsNegative(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult? Function(String message, CaughtException? cause)?
        valueGreaterThan100,
    TResult? Function(String message, CaughtException? cause)? valueIsNegative,
  }) {
    return valueIsNegative?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        numberFormatException,
    TResult Function(String message, CaughtException? cause)?
        valueGreaterThan100,
    TResult Function(String message, CaughtException? cause)? valueIsNegative,
    required TResult orElse(),
  }) {
    if (valueIsNegative != null) {
      return valueIsNegative(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberFormatException value)
        numberFormatException,
    required TResult Function(ValueGreaterThan100 value) valueGreaterThan100,
    required TResult Function(ValueIsNegative value) valueIsNegative,
  }) {
    return valueIsNegative(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberFormatException value)? numberFormatException,
    TResult? Function(ValueGreaterThan100 value)? valueGreaterThan100,
    TResult? Function(ValueIsNegative value)? valueIsNegative,
  }) {
    return valueIsNegative?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberFormatException value)? numberFormatException,
    TResult Function(ValueGreaterThan100 value)? valueGreaterThan100,
    TResult Function(ValueIsNegative value)? valueIsNegative,
    required TResult orElse(),
  }) {
    if (valueIsNegative != null) {
      return valueIsNegative(this);
    }
    return orElse();
  }
}

abstract class ValueIsNegative
    implements PercentageFailure, ThrowableException {
  const factory ValueIsNegative(
      [final String message, final CaughtException? cause]) = _$ValueIsNegative;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$ValueIsNegativeCopyWith<_$ValueIsNegative> get copyWith =>
      throw _privateConstructorUsedError;
}
