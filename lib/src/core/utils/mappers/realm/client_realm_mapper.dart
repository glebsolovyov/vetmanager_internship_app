import 'package:vetmanager_internship_app/src/core/local_db/model/admission_realm.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/client.dart';

extension ClientRealmMapper$ToRealm on Client {
  ClientRealm toRealm() => ClientRealm(
        clientId,
        firstName,
        lastName,
        cellPhone,
        inBlacklist,
        cellPhoneClean,
        middleName: middleName,
        email: email,
        clientType: clientType,
        address: address,
        phonePrefix: phonePrefix,
      );
}

extension ClientRealmMapper$ToModel on ClientRealm {
  Client toModel() => Client(
        clientId: clientId,
        firstName: firstName,
        middleName: middleName,
        lastName: lastName,
        email: email,
        cellPhone: cellPhone,
        address: address,
        inBlacklist: inBlacklist,
        clientType: clientType,
        phonePrefix: phonePrefix,
        cellPhoneClean: cellPhoneClean,
      );
}
