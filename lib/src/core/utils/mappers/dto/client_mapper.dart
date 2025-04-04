import 'package:vetmanager_internship_app/src/feature/admission/data/dto/client_dto.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/client.dart';

extension ClienDtotMapper on ClientDto {
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
