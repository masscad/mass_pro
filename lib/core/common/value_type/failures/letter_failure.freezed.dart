// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'letter_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LetterFailure {
  String get message => throw _privateConstructorUsedError;
  CaughtException? get cause => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        stringIsNotALetterException,
    required TResult Function(String message, CaughtException? cause)
        moreThanOneLetterException,
    required TResult Function(String message, CaughtException? cause)
        emptyStringException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        stringIsNotALetterException,
    TResult? Function(String message, CaughtException? cause)?
        moreThanOneLetterException,
    TResult? Function(String message, CaughtException? cause)?
        emptyStringException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        stringIsNotALetterException,
    TResult Function(String message, CaughtException? cause)?
        moreThanOneLetterException,
    TResult Function(String message, CaughtException? cause)?
        emptyStringException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringIsNotALetterException value)
        stringIsNotALetterException,
    required TResult Function(MoreThanOneLetterException value)
        moreThanOneLetterException,
    required TResult Function(EmptyStringException value) emptyStringException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringIsNotALetterException value)?
        stringIsNotALetterException,
    TResult? Function(MoreThanOneLetterException value)?
        moreThanOneLetterException,
    TResult? Function(EmptyStringException value)? emptyStringException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringIsNotALetterException value)?
        stringIsNotALetterException,
    TResult Function(MoreThanOneLetterException value)?
        moreThanOneLetterException,
    TResult Function(EmptyStringException value)? emptyStringException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LetterFailureCopyWith<LetterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LetterFailureCopyWith<$Res> {
  factory $LetterFailureCopyWith(
          LetterFailure value, $Res Function(LetterFailure) then) =
      _$LetterFailureCopyWithImpl<$Res, LetterFailure>;
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class _$LetterFailureCopyWithImpl<$Res, $Val extends LetterFailure>
    implements $LetterFailureCopyWith<$Res> {
  _$LetterFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$StringIsNotALetterExceptionCopyWith<$Res>
    implements $LetterFailureCopyWith<$Res> {
  factory _$$StringIsNotALetterExceptionCopyWith(
          _$StringIsNotALetterException value,
          $Res Function(_$StringIsNotALetterException) then) =
      __$$StringIsNotALetterExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$StringIsNotALetterExceptionCopyWithImpl<$Res>
    extends _$LetterFailureCopyWithImpl<$Res, _$StringIsNotALetterException>
    implements _$$StringIsNotALetterExceptionCopyWith<$Res> {
  __$$StringIsNotALetterExceptionCopyWithImpl(
      _$StringIsNotALetterException _value,
      $Res Function(_$StringIsNotALetterException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$StringIsNotALetterException(
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

class _$StringIsNotALetterException implements StringIsNotALetterException {
  const _$StringIsNotALetterException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringIsNotALetterException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringIsNotALetterExceptionCopyWith<_$StringIsNotALetterException>
      get copyWith => __$$StringIsNotALetterExceptionCopyWithImpl<
          _$StringIsNotALetterException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        stringIsNotALetterException,
    required TResult Function(String message, CaughtException? cause)
        moreThanOneLetterException,
    required TResult Function(String message, CaughtException? cause)
        emptyStringException,
  }) {
    return stringIsNotALetterException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        stringIsNotALetterException,
    TResult? Function(String message, CaughtException? cause)?
        moreThanOneLetterException,
    TResult? Function(String message, CaughtException? cause)?
        emptyStringException,
  }) {
    return stringIsNotALetterException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        stringIsNotALetterException,
    TResult Function(String message, CaughtException? cause)?
        moreThanOneLetterException,
    TResult Function(String message, CaughtException? cause)?
        emptyStringException,
    required TResult orElse(),
  }) {
    if (stringIsNotALetterException != null) {
      return stringIsNotALetterException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringIsNotALetterException value)
        stringIsNotALetterException,
    required TResult Function(MoreThanOneLetterException value)
        moreThanOneLetterException,
    required TResult Function(EmptyStringException value) emptyStringException,
  }) {
    return stringIsNotALetterException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringIsNotALetterException value)?
        stringIsNotALetterException,
    TResult? Function(MoreThanOneLetterException value)?
        moreThanOneLetterException,
    TResult? Function(EmptyStringException value)? emptyStringException,
  }) {
    return stringIsNotALetterException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringIsNotALetterException value)?
        stringIsNotALetterException,
    TResult Function(MoreThanOneLetterException value)?
        moreThanOneLetterException,
    TResult Function(EmptyStringException value)? emptyStringException,
    required TResult orElse(),
  }) {
    if (stringIsNotALetterException != null) {
      return stringIsNotALetterException(this);
    }
    return orElse();
  }
}

abstract class StringIsNotALetterException
    implements LetterFailure, ThrowableException {
  const factory StringIsNotALetterException(
      [final String message,
      final CaughtException? cause]) = _$StringIsNotALetterException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$StringIsNotALetterExceptionCopyWith<_$StringIsNotALetterException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoreThanOneLetterExceptionCopyWith<$Res>
    implements $LetterFailureCopyWith<$Res> {
  factory _$$MoreThanOneLetterExceptionCopyWith(
          _$MoreThanOneLetterException value,
          $Res Function(_$MoreThanOneLetterException) then) =
      __$$MoreThanOneLetterExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$MoreThanOneLetterExceptionCopyWithImpl<$Res>
    extends _$LetterFailureCopyWithImpl<$Res, _$MoreThanOneLetterException>
    implements _$$MoreThanOneLetterExceptionCopyWith<$Res> {
  __$$MoreThanOneLetterExceptionCopyWithImpl(
      _$MoreThanOneLetterException _value,
      $Res Function(_$MoreThanOneLetterException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$MoreThanOneLetterException(
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

class _$MoreThanOneLetterException implements MoreThanOneLetterException {
  const _$MoreThanOneLetterException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoreThanOneLetterException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoreThanOneLetterExceptionCopyWith<_$MoreThanOneLetterException>
      get copyWith => __$$MoreThanOneLetterExceptionCopyWithImpl<
          _$MoreThanOneLetterException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        stringIsNotALetterException,
    required TResult Function(String message, CaughtException? cause)
        moreThanOneLetterException,
    required TResult Function(String message, CaughtException? cause)
        emptyStringException,
  }) {
    return moreThanOneLetterException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        stringIsNotALetterException,
    TResult? Function(String message, CaughtException? cause)?
        moreThanOneLetterException,
    TResult? Function(String message, CaughtException? cause)?
        emptyStringException,
  }) {
    return moreThanOneLetterException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        stringIsNotALetterException,
    TResult Function(String message, CaughtException? cause)?
        moreThanOneLetterException,
    TResult Function(String message, CaughtException? cause)?
        emptyStringException,
    required TResult orElse(),
  }) {
    if (moreThanOneLetterException != null) {
      return moreThanOneLetterException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringIsNotALetterException value)
        stringIsNotALetterException,
    required TResult Function(MoreThanOneLetterException value)
        moreThanOneLetterException,
    required TResult Function(EmptyStringException value) emptyStringException,
  }) {
    return moreThanOneLetterException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringIsNotALetterException value)?
        stringIsNotALetterException,
    TResult? Function(MoreThanOneLetterException value)?
        moreThanOneLetterException,
    TResult? Function(EmptyStringException value)? emptyStringException,
  }) {
    return moreThanOneLetterException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringIsNotALetterException value)?
        stringIsNotALetterException,
    TResult Function(MoreThanOneLetterException value)?
        moreThanOneLetterException,
    TResult Function(EmptyStringException value)? emptyStringException,
    required TResult orElse(),
  }) {
    if (moreThanOneLetterException != null) {
      return moreThanOneLetterException(this);
    }
    return orElse();
  }
}

abstract class MoreThanOneLetterException
    implements LetterFailure, ThrowableException {
  const factory MoreThanOneLetterException(
      [final String message,
      final CaughtException? cause]) = _$MoreThanOneLetterException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$MoreThanOneLetterExceptionCopyWith<_$MoreThanOneLetterException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStringExceptionCopyWith<$Res>
    implements $LetterFailureCopyWith<$Res> {
  factory _$$EmptyStringExceptionCopyWith(_$EmptyStringException value,
          $Res Function(_$EmptyStringException) then) =
      __$$EmptyStringExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CaughtException? cause});
}

/// @nodoc
class __$$EmptyStringExceptionCopyWithImpl<$Res>
    extends _$LetterFailureCopyWithImpl<$Res, _$EmptyStringException>
    implements _$$EmptyStringExceptionCopyWith<$Res> {
  __$$EmptyStringExceptionCopyWithImpl(_$EmptyStringException _value,
      $Res Function(_$EmptyStringException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cause = freezed,
  }) {
    return _then(_$EmptyStringException(
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

class _$EmptyStringException implements EmptyStringException {
  const _$EmptyStringException([this.message = 'Exception', this.cause]);

  @override
  @JsonKey()
  final String message;
  @override
  final CaughtException? cause;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyStringException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyStringExceptionCopyWith<_$EmptyStringException> get copyWith =>
      __$$EmptyStringExceptionCopyWithImpl<_$EmptyStringException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, CaughtException? cause)
        stringIsNotALetterException,
    required TResult Function(String message, CaughtException? cause)
        moreThanOneLetterException,
    required TResult Function(String message, CaughtException? cause)
        emptyStringException,
  }) {
    return emptyStringException(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, CaughtException? cause)?
        stringIsNotALetterException,
    TResult? Function(String message, CaughtException? cause)?
        moreThanOneLetterException,
    TResult? Function(String message, CaughtException? cause)?
        emptyStringException,
  }) {
    return emptyStringException?.call(message, cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, CaughtException? cause)?
        stringIsNotALetterException,
    TResult Function(String message, CaughtException? cause)?
        moreThanOneLetterException,
    TResult Function(String message, CaughtException? cause)?
        emptyStringException,
    required TResult orElse(),
  }) {
    if (emptyStringException != null) {
      return emptyStringException(message, cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringIsNotALetterException value)
        stringIsNotALetterException,
    required TResult Function(MoreThanOneLetterException value)
        moreThanOneLetterException,
    required TResult Function(EmptyStringException value) emptyStringException,
  }) {
    return emptyStringException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringIsNotALetterException value)?
        stringIsNotALetterException,
    TResult? Function(MoreThanOneLetterException value)?
        moreThanOneLetterException,
    TResult? Function(EmptyStringException value)? emptyStringException,
  }) {
    return emptyStringException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringIsNotALetterException value)?
        stringIsNotALetterException,
    TResult Function(MoreThanOneLetterException value)?
        moreThanOneLetterException,
    TResult Function(EmptyStringException value)? emptyStringException,
    required TResult orElse(),
  }) {
    if (emptyStringException != null) {
      return emptyStringException(this);
    }
    return orElse();
  }
}

abstract class EmptyStringException
    implements LetterFailure, ThrowableException {
  const factory EmptyStringException(
      [final String message,
      final CaughtException? cause]) = _$EmptyStringException;

  @override
  String get message;
  @override
  CaughtException? get cause;
  @override
  @JsonKey(ignore: true)
  _$$EmptyStringExceptionCopyWith<_$EmptyStringException> get copyWith =>
      throw _privateConstructorUsedError;
}
