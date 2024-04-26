import 'package:d2_remote/core/common/value_type/failures/integer_failure.dart';
import 'package:d2_remote/core/common/value_type/validators/integer_validator_base.dart';

import '../../../mp/helpers/result.dart';

class IntegerValidator extends IntegerValidatorBase<IntegerFailure> {
  const IntegerValidator();

  @override
  IntegerFailure get formatFailure =>
      const IntegerFailure.numberFormatException();

  @override
  IntegerFailure get leadingZeroException =>
      const IntegerFailure.leadingZeroException();

  @override
  IntegerFailure get overflowFailure => const IntegerFailure.integerOverflow();

  @override
  Result<String, IntegerFailure> validateInteger(String value) {
    int.parse(value);

    // Success
    return Result.success(value);
  }
}
