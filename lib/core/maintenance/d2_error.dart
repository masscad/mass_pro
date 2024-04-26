import 'package:d2_remote/core/maintenance/d2_error_code.dart';
import 'package:d2_remote/core/maintenance/d2_error_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/exception/exception.dart';

part 'd2_error.freezed.dart';

@freezed
class D2Error with _$D2Error implements ThrowableException {
  const factory D2Error({
    String? url,
    D2ErrorComponent? errorComponent,
    required D2ErrorCode errorCode,
    required String errorDescription,
    int? httpErrorCode,
    Exception? originalException,
    DateTime? created,
    StackTrace? stackTrace,
  }) = _D2Error;

  const D2Error._();

  String get message => errorDescription;

  bool isOffline() {
    return errorCode == D2ErrorCode.SOCKET_TIMEOUT ||
        errorCode == D2ErrorCode.UNKNOWN_HOST;
  }

  @override
  CaughtException? get cause => originalException != null
      ? CaughtException(originalException!, stackTrace)
      : null;
}
