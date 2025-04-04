import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';
import 'package:vetmanager_internship_app/src/core/di/injectable/singleton/realm.dart';
import 'package:vetmanager_internship_app/src/core/local_db/realm_storage.dart';

@Injectable(as: RealmStorage)
class RealmStorageImpl implements RealmStorage {
  RealmStorageImpl(RealmService realm) : _realm = realm.realm;

  final Realm _realm;

  @override
  List<T> readAll<T extends RealmObject>() =>
      _realm.all<T>().map((e) => e).toList();

  @override
  void write(RealmObject model) => _realm.write(() => _realm.add(model));

  @override
  void writeAll(List<RealmObject> models) =>
      _realm.write(() => _realm.addAll(models));

  @override
  T? read<T extends RealmObject>(int id) => _realm.find<T>(id.toString());
}
