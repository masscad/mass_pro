import 'package:d2_remote/modules/metadata/option_set/entities/option.entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_set_configuration.freezed.dart';

@freezed
class OptionSetConfiguration with _$OptionSetConfiguration {
  const factory OptionSetConfiguration.defaultOptionSet(
      {required List<Option> options,
      @Default(<String>[]) List<String> optionsToHide,
      @Default(<String>[]) List<String> optionsToShow}) = DefaultOptionSet;

  const factory OptionSetConfiguration.bigOptionSet(
      {@Default(<Option>[]) List<Option> options,
      @Default(<String>[]) List<String> optionsToHide,
      @Default(<String>[]) List<String> optionsToShow}) = BigOptionSet;

  const OptionSetConfiguration._();

  static OptionSetConfiguration config(
      int optionCount, List<Option> Function() optionRequestCallback) {
    return optionCount > 15
        ? BigOptionSet()
        : OptionSetConfiguration.defaultOptionSet(
            options: optionRequestCallback());
  }

  OptionSetConfiguration updateOptionsToHideAndShow(
      {required List<String> optionsToHide,
      required List<String> optionsToShow}) {
    return setOptionsToHide(optionsToHide).setOptionsToShow(optionsToShow);
  }

  OptionSetConfiguration setOptionsToHide(List<String> optionsToHide) {
    return map(
        defaultOptionSet: (defaultOptionSet) =>
            defaultOptionSet.copyWith(optionsToHide: optionsToHide),
        bigOptionSet: (bigOptionSet) =>
            bigOptionSet.copyWith(optionsToHide: optionsToHide));
  }

  OptionSetConfiguration setOptionsToShow(List<String> optionsToShow) {
    return map(
        defaultOptionSet: (defaultOptionSet) =>
            defaultOptionSet.copyWith(optionsToShow: optionsToShow),
        bigOptionSet: (bigOptionSet) =>
            bigOptionSet.copyWith(optionsToShow: optionsToShow));
  }
}
