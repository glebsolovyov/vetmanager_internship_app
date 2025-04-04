import 'package:realm/realm.dart';

/// [RealmStorage]
abstract interface class RealmStorage {
  T? read<T extends RealmObject>(int id);

  List<T> readAll<T extends RealmObject>();

  void write(RealmObject model);

  void writeAll(List<RealmObject> models);
}
