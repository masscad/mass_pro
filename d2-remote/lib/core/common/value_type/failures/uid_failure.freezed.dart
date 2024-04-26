// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uid_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UidFailure {
  String get message => throw _privateConstructorUsedError;
  CaughtException? get cause => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        moreThanElevenCharsException,
    required TResult Function(String message, CaughtException? cause)
        lessThanElevenCharsException,
    required TResult Function(String message, CaughtException? cause)
        malformedUidException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        moreThanElevenCharsException,
    TResult? Function(String message, CaughtException? cause)?
        lessThanElevenCharsException,
    TResult? Function(String message, CaughtException? cause)?
        malformedUidException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        moreThanElevenCharsException,
    TResult Function(String message, CaughtException? cause)?
        lessThanElevenCharsException,
    TResult Function(String message, CaughtException? cause)?
        malformedUidException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoreThanElevenCharsException value)
        moreThanElevenCharsException,
    required TResult Function(LessThanElevenCharsException value)
        lessThanElevenCharsException,
    required TResult Function(MalformedUidException value)
        malformedUidException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoreThanElevenCharsException value)?
        moreThanElevenCharsException,
    TResult? Function(LessThanElevenCharsException value)?
        lessThanElevenCharsException,
    TResult? Function(MalformedUidException value)? malformedUidException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoreThanElevenCharsException value)?
        moreThanElevenCharsException,
    TResult Function(LessThanElevenCharsException value)?
        lessThanElevenCharsException,
    TResult Function(MalformedUidException value)? malformedUidException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UidFailureCopyWith<UidFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UidFailureCopyWith<$Res> {
  factory $UidFailureCopyWith(
          UidFailure value, $Res Function(UidFailure) then) =
      _$UidFailureCopyWithImpl<$Res, UidFailure>;
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class _$UidFailureCopyWithImpl<$Res, $Val extends UidFailure>
    implements $UidFailureCopyWith<$Res> {
  _$UidFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$MoreThanElevenCharsExceptionCopyWith<$Res>
    implements $UidFailureCopyWith<$Res> {
  factory _$$MoreThanElevenCharsExceptionCopyWith(
          _$MoreThanElevenCharsException value,
          $Res Function(_$MoreThanElevenCharsException) then) =
      __$$MoreThanElevenCharsExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$MoreThanElevenCharsExceptionCopyWithImpl<$Res>
    extends _$UidFailureCopyWithImpl<$Res, _$MoreThanElevenCharsException>
    implements _$$MoreThanElevenCharsExceptionCopyWith<$Res> {
  __$$MoreThanElevenCharsExceptionCopyWithImpl(
      _$MoreThanElevenCharsException _value,
      $Res Function(_$MoreThanElevenCharsException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$MoreThanElevenCharsException(
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

class _$MoreThanElevenCharsException implements MoreThanElevenCharsException {
  const _$MoreThanElevenCharsException(
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
            other is _$MoreThanElevenCharsException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoreThanElevenCharsExceptionCopyWith<_$MoreThanElevenCharsException>
      get copyWith => __$$MoreThanElevenCharsExceptionCopyWithImpl<
          _$MoreThanElevenCharsException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        moreThanElevenCharsException,
    required TResult Function(String message, CaughtException? cause)
        lessThanElevenCharsException,
    required TResult Function(String message, CaughtException? cause)
        malformedUidException,
  }) {
    return moreThanElevenCharsException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        moreThanElevenCharsException,
    TResult? Function(String message, CaughtException? cause)?
        lessThanElevenCharsException,
    TResult? Function(String message, CaughtException? cause)?
        malformedUidException,
  }) {
    return moreThanElevenCharsException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        moreThanElevenCharsException,
    TResult Function(String message, CaughtException? cause)?
        lessThanElevenCharsException,
    TResult Function(String message, CaughtException? cause)?
        malformedUidException,
    required TResult orElse(),
  }) {
    if (moreThanElevenCharsException != null) {
      return moreThanElevenCharsException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoreThanElevenCharsException value)
        moreThanElevenCharsException,
    required TResult Function(LessThanElevenCharsException value)
        lessThanElevenCharsException,
    required TResult Function(MalformedUidException value)
        malformedUidException,
  }) {
    return moreThanElevenCharsException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoreThanElevenCharsException value)?
        moreThanElevenCharsException,
    TResult? Function(LessThanElevenCharsException value)?
        lessThanElevenCharsException,
    TResult? Function(MalformedUidException value)? malformedUidException,
  }) {
    return moreThanElevenCharsException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoreThanElevenCharsException value)?
        moreThanElevenCharsException,
    TResult Function(LessThanElevenCharsException value)?
        lessThanElevenCharsException,
    TResult Function(MalformedUidException value)? malformedUidException,
    required TResult orElse(),
  }) {
    if (moreThanElevenCharsException != null) {
      return moreThanElevenCharsException(this);
    }
    return orElse();
  }
}

abstract class MoreThanElevenCharsException
    implements UidFailure, ThrowableException {
  const factory MoreThanElevenCharsException(
      [final String message,
      final CaughtException? cause]) = _$MoreThanElevenCharsException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$MoreThanElevenCharsExceptionCopyWith<_$MoreThanElevenCharsException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LessThanElevenCharsExceptionCopyWith<$Res>
    implements $UidFailureCopyWith<$Res> {
  factory _$$LessThanElevenCharsExceptionCopyWith(
          _$LessThanElevenCharsException value,
          $Res Function(_$LessThanElevenCharsException) then) =
      __$$LessThanElevenCharsExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$LessThanElevenCharsExceptionCopyWithImpl<$Res>
    extends _$UidFailureCopyWithImpl<$Res, _$LessThanElevenCharsException>
    implements _$$LessThanElevenCharsExceptionCopyWith<$Res> {
  __$$LessThanElevenCharsExceptionCopyWithImpl(
      _$LessThanElevenCharsException _value,
      $Res Function(_$LessThanElevenCharsException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$LessThanElevenCharsException(
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

class _$LessThanElevenCharsException implements LessThanElevenCharsException {
  const _$LessThanElevenCharsException(
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
            other is _$LessThanElevenCharsException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessThanElevenCharsExceptionCopyWith<_$LessThanElevenCharsException>
      get copyWith => __$$LessThanElevenCharsExceptionCopyWithImpl<
          _$LessThanElevenCharsException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        moreThanElevenCharsException,
    required TResult Function(String message, CaughtException? cause)
        lessThanElevenCharsException,
    required TResult Function(String message, CaughtException? cause)
        malformedUidException,
  }) {
    return lessThanElevenCharsException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        moreThanElevenCharsException,
    TResult? Function(String message, CaughtException? cause)?
        lessThanElevenCharsException,
    TResult? Function(String message, CaughtException? cause)?
        malformedUidException,
  }) {
    return lessThanElevenCharsException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        moreThanElevenCharsException,
    TResult Function(String message, CaughtException? cause)?
        lessThanElevenCharsException,
    TResult Function(String message, CaughtException? cause)?
        malformedUidException,
    required TResult orElse(),
  }) {
    if (lessThanElevenCharsException != null) {
      return lessThanElevenCharsException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoreThanElevenCharsException value)
        moreThanElevenCharsException,
    required TResult Function(LessThanElevenCharsException value)
        lessThanElevenCharsException,
    required TResult Function(MalformedUidException value)
        malformedUidException,
  }) {
    return lessThanElevenCharsException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoreThanElevenCharsException value)?
        moreThanElevenCharsException,
    TResult? Function(LessThanElevenCharsException value)?
        lessThanElevenCharsException,
    TResult? Function(MalformedUidException value)? malformedUidException,
  }) {
    return lessThanElevenCharsException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoreThanElevenCharsException value)?
        moreThanElevenCharsException,
    TResult Function(LessThanElevenCharsException value)?
        lessThanElevenCharsException,
    TResult Function(MalformedUidException value)? malformedUidException,
    required TResult orElse(),
  }) {
    if (lessThanElevenCharsException != null) {
      return lessThanElevenCharsException(this);
    }
    return orElse();
  }
}

abstract class LessThanElevenCharsException
    implements UidFailure, ThrowableException {
  const factory LessThanElevenCharsException(
      [final String message,
      final CaughtException? cause]) = _$LessThanElevenCharsException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$LessThanElevenCharsExceptionCopyWith<_$LessThanElevenCharsException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MalformedUidExceptionCopyWith<$Res>
    implements $UidFailureCopyWith<$Res> {
  factory _$$MalformedUidExceptionCopyWith(_$MalformedUidException value,
          $Res Function(_$MalformedUidException) then) =
      __$$MalformedUidExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$MalformedUidExceptionCopyWithImpl<$Res>
    extends _$UidFailureCopyWithImpl<$Res, _$MalformedUidException>
    implements _$$MalformedUidExceptionCopyWith<$Res> {
  __$$MalformedUidExceptionCopyWithImpl(_$MalformedUidException _value,
      $Res Function(_$MalformedUidException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$MalformedUidException(
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

class _$MalformedUidException implements MalformedUidException {
  const _$MalformedUidException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MalformedUidException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MalformedUidExceptionCopyWith<_$MalformedUidException> get copyWith =>
      __$$MalformedUidExceptionCopyWithImpl<_$MalformedUidException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        moreThanElevenCharsException,
    required TResult Function(String message, CaughtException? cause)
        lessThanElevenCharsException,
    required TResult Function(String message, CaughtException? cause)
        malformedUidException,
  }) {
    return malformedUidException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        moreThanElevenCharsException,
    TResult? Function(String message, CaughtException? cause)?
        lessThanElevenCharsException,
    TResult? Function(String message, CaughtException? cause)?
        malformedUidException,
  }) {
    return malformedUidException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        moreThanElevenCharsException,
    TResult Function(String message, CaughtException? cause)?
        lessThanElevenCharsException,
    TResult Function(String message, CaughtException? cause)?
        malformedUidException,
    required TResult orElse(),
  }) {
    if (malformedUidException != null) {
      return malformedUidException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoreThanElevenCharsException value)
        moreThanElevenCharsException,
    required TResult Function(LessThanElevenCharsException value)
        lessThanElevenCharsException,
    required TResult Function(MalformedUidException value)
        malformedUidException,
  }) {
    return malformedUidException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoreThanElevenCharsException value)?
        moreThanElevenCharsException,
    TResult? Function(LessThanElevenCharsException value)?
        lessThanElevenCharsException,
    TResult? Function(MalformedUidException value)? malformedUidException,
  }) {
    return malformedUidException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoreThanElevenCharsException value)?
        moreThanElevenCharsException,
    TResult Function(LessThanElevenCharsException value)?
        lessThanElevenCharsException,
    TResult Function(MalformedUidException value)? malformedUidException,
    required TResult orElse(),
  }) {
    if (malformedUidException != null) {
      return malformedUidException(this);
    }
    return orElse();
  }
}

abstract class MalformedUidException implements UidFailure, ThrowableException {
  const factory MalformedUidException(
      [final String message,
      final CaughtException? cause]) = _$MalformedUidException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$MalformedUidExceptionCopyWith<_$MalformedUidException> get copyWith =>
      throw _privateConstructorUsedError;
}
