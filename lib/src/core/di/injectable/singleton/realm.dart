import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:realm/realm.dart';
import 'package:vetmanager_internship_app/src/core/local_db/model/admission_realm.dart';

@singleton
class RealmService {
  late final Realm realm;

  RealmService() {
    _initRealm();
  }

  Future<void> _initRealm() async {
    final appDir = await getApplicationDocumentsDirectory();
    final config = Configuration.local(
      [
        AdmissionRealm.schema,
        PetRealm.schema,
        DoctorRealm.schema,
        ClientRealm.schema
      ],
      path: '${appDir.path}/default.realm',
    );
    realm = Realm(config);
  }

  void dispose() => realm.close();
}
