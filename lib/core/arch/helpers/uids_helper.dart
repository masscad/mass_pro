import 'package:d2_remote/shared/entities/base.entity.dart';

abstract class UidsHelper {
  /// Returns a [Set] of uids of the given objects.
  ///
  /// @param objects A collection of objects with uid.
  /// @return A [Set] with the uids of the given objects.
  static Set<String> getUids([Iterable<BaseEntity> objects = const []]) {
    return getUidsList(objects).toSet();
  }

  /// Returns a [List] of uids of the given objects.
  ///
  /// @param objects A collection of objects with uid.
  /// @return A [List] with the uids of the given objects.
  static List<String> getUidsList([Iterable<BaseEntity> objects = const []]) {
    return objects.map((e) => e.id!).toList();
  }

  /// Return the uid of the object if the object is not null. If it is null, return null.
  ///
  /// @param o A object with uid.
  /// @return The uid of the object.
  static String? getUidOrNull(BaseEntity? o) {
    return o?.id;
  }
}
