// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class AdmissionRealm extends _AdmissionRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  AdmissionRealm(
    String id,
    DateTime admissionDate,
    String clientId,
    String patientId,
    String typeId,
    String admissionLength,
    String status,
    String clinicId,
    String directDirection,
    String creatorId,
    DateTime createDate,
    String receptionWriteChannel,
    String iconReceptionWriteChannel, {
    Iterable<String> invoicesData = const [],
    PetRealm? petData,
    ClientRealm? clientData,
    String? escroterId,
    String? waitTime,
    DoctorRealm? doctorData,
    String? admissionTypeColor,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'admissionDate', admissionDate);
    RealmObjectBase.set(this, 'clientId', clientId);
    RealmObjectBase.set(this, 'patientId', patientId);
    RealmObjectBase.set(this, 'typeId', typeId);
    RealmObjectBase.set(this, 'admissionLength', admissionLength);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'clinicId', clinicId);
    RealmObjectBase.set(this, 'directDirection', directDirection);
    RealmObjectBase.set(this, 'creatorId', creatorId);
    RealmObjectBase.set(this, 'createDate', createDate);
    RealmObjectBase.set(this, 'receptionWriteChannel', receptionWriteChannel);
    RealmObjectBase.set(
        this, 'iconReceptionWriteChannel', iconReceptionWriteChannel);
    RealmObjectBase.set<RealmList<String>>(
        this, 'invoicesData', RealmList<String>(invoicesData));
    RealmObjectBase.set(this, 'petData', petData);
    RealmObjectBase.set(this, 'clientData', clientData);
    RealmObjectBase.set(this, 'escroterId', escroterId);
    RealmObjectBase.set(this, 'waitTime', waitTime);
    RealmObjectBase.set(this, 'doctorData', doctorData);
    RealmObjectBase.set(this, 'admissionTypeColor', admissionTypeColor);
  }

  AdmissionRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  DateTime get admissionDate =>
      RealmObjectBase.get<DateTime>(this, 'admissionDate') as DateTime;
  @override
  set admissionDate(DateTime value) =>
      RealmObjectBase.set(this, 'admissionDate', value);

  @override
  String get clientId =>
      RealmObjectBase.get<String>(this, 'clientId') as String;
  @override
  set clientId(String value) => RealmObjectBase.set(this, 'clientId', value);

  @override
  String get patientId =>
      RealmObjectBase.get<String>(this, 'patientId') as String;
  @override
  set patientId(String value) => RealmObjectBase.set(this, 'patientId', value);

  @override
  String get typeId => RealmObjectBase.get<String>(this, 'typeId') as String;
  @override
  set typeId(String value) => RealmObjectBase.set(this, 'typeId', value);

  @override
  String get admissionLength =>
      RealmObjectBase.get<String>(this, 'admissionLength') as String;
  @override
  set admissionLength(String value) =>
      RealmObjectBase.set(this, 'admissionLength', value);

  @override
  String get status => RealmObjectBase.get<String>(this, 'status') as String;
  @override
  set status(String value) => RealmObjectBase.set(this, 'status', value);

  @override
  String get clinicId =>
      RealmObjectBase.get<String>(this, 'clinicId') as String;
  @override
  set clinicId(String value) => RealmObjectBase.set(this, 'clinicId', value);

  @override
  String get directDirection =>
      RealmObjectBase.get<String>(this, 'directDirection') as String;
  @override
  set directDirection(String value) =>
      RealmObjectBase.set(this, 'directDirection', value);

  @override
  String get creatorId =>
      RealmObjectBase.get<String>(this, 'creatorId') as String;
  @override
  set creatorId(String value) => RealmObjectBase.set(this, 'creatorId', value);

  @override
  DateTime get createDate =>
      RealmObjectBase.get<DateTime>(this, 'createDate') as DateTime;
  @override
  set createDate(DateTime value) =>
      RealmObjectBase.set(this, 'createDate', value);

  @override
  String get receptionWriteChannel =>
      RealmObjectBase.get<String>(this, 'receptionWriteChannel') as String;
  @override
  set receptionWriteChannel(String value) =>
      RealmObjectBase.set(this, 'receptionWriteChannel', value);

  @override
  String get iconReceptionWriteChannel =>
      RealmObjectBase.get<String>(this, 'iconReceptionWriteChannel') as String;
  @override
  set iconReceptionWriteChannel(String value) =>
      RealmObjectBase.set(this, 'iconReceptionWriteChannel', value);

  @override
  RealmList<String> get invoicesData =>
      RealmObjectBase.get<String>(this, 'invoicesData') as RealmList<String>;
  @override
  set invoicesData(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  PetRealm? get petData =>
      RealmObjectBase.get<PetRealm>(this, 'petData') as PetRealm?;
  @override
  set petData(covariant PetRealm? value) =>
      RealmObjectBase.set(this, 'petData', value);

  @override
  ClientRealm? get clientData =>
      RealmObjectBase.get<ClientRealm>(this, 'clientData') as ClientRealm?;
  @override
  set clientData(covariant ClientRealm? value) =>
      RealmObjectBase.set(this, 'clientData', value);

  @override
  String? get escroterId =>
      RealmObjectBase.get<String>(this, 'escroterId') as String?;
  @override
  set escroterId(String? value) =>
      RealmObjectBase.set(this, 'escroterId', value);

  @override
  String? get waitTime =>
      RealmObjectBase.get<String>(this, 'waitTime') as String?;
  @override
  set waitTime(String? value) => RealmObjectBase.set(this, 'waitTime', value);

  @override
  DoctorRealm? get doctorData =>
      RealmObjectBase.get<DoctorRealm>(this, 'doctorData') as DoctorRealm?;
  @override
  set doctorData(covariant DoctorRealm? value) =>
      RealmObjectBase.set(this, 'doctorData', value);

  @override
  String? get admissionTypeColor =>
      RealmObjectBase.get<String>(this, 'admissionTypeColor') as String?;
  @override
  set admissionTypeColor(String? value) =>
      RealmObjectBase.set(this, 'admissionTypeColor', value);

  @override
  Stream<RealmObjectChanges<AdmissionRealm>> get changes =>
      RealmObjectBase.getChanges<AdmissionRealm>(this);

  @override
  Stream<RealmObjectChanges<AdmissionRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<AdmissionRealm>(this, keyPaths);

  @override
  AdmissionRealm freeze() => RealmObjectBase.freezeObject<AdmissionRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'admissionDate': admissionDate.toEJson(),
      'clientId': clientId.toEJson(),
      'patientId': patientId.toEJson(),
      'typeId': typeId.toEJson(),
      'admissionLength': admissionLength.toEJson(),
      'status': status.toEJson(),
      'clinicId': clinicId.toEJson(),
      'directDirection': directDirection.toEJson(),
      'creatorId': creatorId.toEJson(),
      'createDate': createDate.toEJson(),
      'receptionWriteChannel': receptionWriteChannel.toEJson(),
      'iconReceptionWriteChannel': iconReceptionWriteChannel.toEJson(),
      'invoicesData': invoicesData.toEJson(),
      'petData': petData.toEJson(),
      'clientData': clientData.toEJson(),
      'escroterId': escroterId.toEJson(),
      'waitTime': waitTime.toEJson(),
      'doctorData': doctorData.toEJson(),
      'admissionTypeColor': admissionTypeColor.toEJson(),
    };
  }

  static EJsonValue _toEJson(AdmissionRealm value) => value.toEJson();
  static AdmissionRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'admissionDate': EJsonValue admissionDate,
        'clientId': EJsonValue clientId,
        'patientId': EJsonValue patientId,
        'typeId': EJsonValue typeId,
        'admissionLength': EJsonValue admissionLength,
        'status': EJsonValue status,
        'clinicId': EJsonValue clinicId,
        'directDirection': EJsonValue directDirection,
        'creatorId': EJsonValue creatorId,
        'createDate': EJsonValue createDate,
        'receptionWriteChannel': EJsonValue receptionWriteChannel,
        'iconReceptionWriteChannel': EJsonValue iconReceptionWriteChannel,
      } =>
        AdmissionRealm(
          fromEJson(id),
          fromEJson(admissionDate),
          fromEJson(clientId),
          fromEJson(patientId),
          fromEJson(typeId),
          fromEJson(admissionLength),
          fromEJson(status),
          fromEJson(clinicId),
          fromEJson(directDirection),
          fromEJson(creatorId),
          fromEJson(createDate),
          fromEJson(receptionWriteChannel),
          fromEJson(iconReceptionWriteChannel),
          invoicesData:
              fromEJson(ejson['invoicesData'], defaultValue: const []),
          petData: fromEJson(ejson['petData']),
          clientData: fromEJson(ejson['clientData']),
          escroterId: fromEJson(ejson['escroterId']),
          waitTime: fromEJson(ejson['waitTime']),
          doctorData: fromEJson(ejson['doctorData']),
          admissionTypeColor: fromEJson(ejson['admissionTypeColor']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(AdmissionRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, AdmissionRealm, 'AdmissionRealm', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('admissionDate', RealmPropertyType.timestamp),
      SchemaProperty('clientId', RealmPropertyType.string),
      SchemaProperty('patientId', RealmPropertyType.string),
      SchemaProperty('typeId', RealmPropertyType.string),
      SchemaProperty('admissionLength', RealmPropertyType.string),
      SchemaProperty('status', RealmPropertyType.string),
      SchemaProperty('clinicId', RealmPropertyType.string),
      SchemaProperty('directDirection', RealmPropertyType.string),
      SchemaProperty('creatorId', RealmPropertyType.string),
      SchemaProperty('createDate', RealmPropertyType.timestamp),
      SchemaProperty('receptionWriteChannel', RealmPropertyType.string),
      SchemaProperty('iconReceptionWriteChannel', RealmPropertyType.string),
      SchemaProperty('invoicesData', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('petData', RealmPropertyType.object,
          optional: true, linkTarget: 'PetRealm'),
      SchemaProperty('clientData', RealmPropertyType.object,
          optional: true, linkTarget: 'ClientRealm'),
      SchemaProperty('escroterId', RealmPropertyType.string, optional: true),
      SchemaProperty('waitTime', RealmPropertyType.string, optional: true),
      SchemaProperty('doctorData', RealmPropertyType.object,
          optional: true, linkTarget: 'DoctorRealm'),
      SchemaProperty('admissionTypeColor', RealmPropertyType.string,
          optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ClientRealm extends _ClientRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  ClientRealm(
    String clientId,
    String firstName,
    String lastName,
    String cellPhone,
    String inBlacklist,
    String cellPhoneClean, {
    String? middleName,
    String? email,
    String? address,
    String? clientType,
    String? phonePrefix,
  }) {
    RealmObjectBase.set(this, 'clientId', clientId);
    RealmObjectBase.set(this, 'firstName', firstName);
    RealmObjectBase.set(this, 'lastName', lastName);
    RealmObjectBase.set(this, 'cellPhone', cellPhone);
    RealmObjectBase.set(this, 'inBlacklist', inBlacklist);
    RealmObjectBase.set(this, 'cellPhoneClean', cellPhoneClean);
    RealmObjectBase.set(this, 'middleName', middleName);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'address', address);
    RealmObjectBase.set(this, 'clientType', clientType);
    RealmObjectBase.set(this, 'phonePrefix', phonePrefix);
  }

  ClientRealm._();

  @override
  String get clientId =>
      RealmObjectBase.get<String>(this, 'clientId') as String;
  @override
  set clientId(String value) => RealmObjectBase.set(this, 'clientId', value);

  @override
  String get firstName =>
      RealmObjectBase.get<String>(this, 'firstName') as String;
  @override
  set firstName(String value) => RealmObjectBase.set(this, 'firstName', value);

  @override
  String get lastName =>
      RealmObjectBase.get<String>(this, 'lastName') as String;
  @override
  set lastName(String value) => RealmObjectBase.set(this, 'lastName', value);

  @override
  String get cellPhone =>
      RealmObjectBase.get<String>(this, 'cellPhone') as String;
  @override
  set cellPhone(String value) => RealmObjectBase.set(this, 'cellPhone', value);

  @override
  String get inBlacklist =>
      RealmObjectBase.get<String>(this, 'inBlacklist') as String;
  @override
  set inBlacklist(String value) =>
      RealmObjectBase.set(this, 'inBlacklist', value);

  @override
  String get cellPhoneClean =>
      RealmObjectBase.get<String>(this, 'cellPhoneClean') as String;
  @override
  set cellPhoneClean(String value) =>
      RealmObjectBase.set(this, 'cellPhoneClean', value);

  @override
  String? get middleName =>
      RealmObjectBase.get<String>(this, 'middleName') as String?;
  @override
  set middleName(String? value) =>
      RealmObjectBase.set(this, 'middleName', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  String? get address =>
      RealmObjectBase.get<String>(this, 'address') as String?;
  @override
  set address(String? value) => RealmObjectBase.set(this, 'address', value);

  @override
  String? get clientType =>
      RealmObjectBase.get<String>(this, 'clientType') as String?;
  @override
  set clientType(String? value) =>
      RealmObjectBase.set(this, 'clientType', value);

  @override
  String? get phonePrefix =>
      RealmObjectBase.get<String>(this, 'phonePrefix') as String?;
  @override
  set phonePrefix(String? value) =>
      RealmObjectBase.set(this, 'phonePrefix', value);

  @override
  Stream<RealmObjectChanges<ClientRealm>> get changes =>
      RealmObjectBase.getChanges<ClientRealm>(this);

  @override
  Stream<RealmObjectChanges<ClientRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ClientRealm>(this, keyPaths);

  @override
  ClientRealm freeze() => RealmObjectBase.freezeObject<ClientRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'clientId': clientId.toEJson(),
      'firstName': firstName.toEJson(),
      'lastName': lastName.toEJson(),
      'cellPhone': cellPhone.toEJson(),
      'inBlacklist': inBlacklist.toEJson(),
      'cellPhoneClean': cellPhoneClean.toEJson(),
      'middleName': middleName.toEJson(),
      'email': email.toEJson(),
      'address': address.toEJson(),
      'clientType': clientType.toEJson(),
      'phonePrefix': phonePrefix.toEJson(),
    };
  }

  static EJsonValue _toEJson(ClientRealm value) => value.toEJson();
  static ClientRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'clientId': EJsonValue clientId,
        'firstName': EJsonValue firstName,
        'lastName': EJsonValue lastName,
        'cellPhone': EJsonValue cellPhone,
        'inBlacklist': EJsonValue inBlacklist,
        'cellPhoneClean': EJsonValue cellPhoneClean,
      } =>
        ClientRealm(
          fromEJson(clientId),
          fromEJson(firstName),
          fromEJson(lastName),
          fromEJson(cellPhone),
          fromEJson(inBlacklist),
          fromEJson(cellPhoneClean),
          middleName: fromEJson(ejson['middleName']),
          email: fromEJson(ejson['email']),
          address: fromEJson(ejson['address']),
          clientType: fromEJson(ejson['clientType']),
          phonePrefix: fromEJson(ejson['phonePrefix']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ClientRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, ClientRealm, 'ClientRealm', [
      SchemaProperty('clientId', RealmPropertyType.string),
      SchemaProperty('firstName', RealmPropertyType.string),
      SchemaProperty('lastName', RealmPropertyType.string),
      SchemaProperty('cellPhone', RealmPropertyType.string),
      SchemaProperty('inBlacklist', RealmPropertyType.string),
      SchemaProperty('cellPhoneClean', RealmPropertyType.string),
      SchemaProperty('middleName', RealmPropertyType.string, optional: true),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
      SchemaProperty('address', RealmPropertyType.string, optional: true),
      SchemaProperty('clientType', RealmPropertyType.string, optional: true),
      SchemaProperty('phonePrefix', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class PetRealm extends _PetRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  PetRealm(
    String petId,
    String sex,
    String alias,
    String petType,
    String petTypeId,
    String url, {
    String? petBreed,
    String? birthday,
  }) {
    RealmObjectBase.set(this, 'petId', petId);
    RealmObjectBase.set(this, 'sex', sex);
    RealmObjectBase.set(this, 'alias', alias);
    RealmObjectBase.set(this, 'petType', petType);
    RealmObjectBase.set(this, 'petTypeId', petTypeId);
    RealmObjectBase.set(this, 'url', url);
    RealmObjectBase.set(this, 'petBreed', petBreed);
    RealmObjectBase.set(this, 'birthday', birthday);
  }

  PetRealm._();

  @override
  String get petId => RealmObjectBase.get<String>(this, 'petId') as String;
  @override
  set petId(String value) => RealmObjectBase.set(this, 'petId', value);

  @override
  String get sex => RealmObjectBase.get<String>(this, 'sex') as String;
  @override
  set sex(String value) => RealmObjectBase.set(this, 'sex', value);

  @override
  String get alias => RealmObjectBase.get<String>(this, 'alias') as String;
  @override
  set alias(String value) => RealmObjectBase.set(this, 'alias', value);

  @override
  String get petType => RealmObjectBase.get<String>(this, 'petType') as String;
  @override
  set petType(String value) => RealmObjectBase.set(this, 'petType', value);

  @override
  String get petTypeId =>
      RealmObjectBase.get<String>(this, 'petTypeId') as String;
  @override
  set petTypeId(String value) => RealmObjectBase.set(this, 'petTypeId', value);

  @override
  String get url => RealmObjectBase.get<String>(this, 'url') as String;
  @override
  set url(String value) => RealmObjectBase.set(this, 'url', value);

  @override
  String? get petBreed =>
      RealmObjectBase.get<String>(this, 'petBreed') as String?;
  @override
  set petBreed(String? value) => RealmObjectBase.set(this, 'petBreed', value);

  @override
  String? get birthday =>
      RealmObjectBase.get<String>(this, 'birthday') as String?;
  @override
  set birthday(String? value) => RealmObjectBase.set(this, 'birthday', value);

  @override
  Stream<RealmObjectChanges<PetRealm>> get changes =>
      RealmObjectBase.getChanges<PetRealm>(this);

  @override
  Stream<RealmObjectChanges<PetRealm>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<PetRealm>(this, keyPaths);

  @override
  PetRealm freeze() => RealmObjectBase.freezeObject<PetRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'petId': petId.toEJson(),
      'sex': sex.toEJson(),
      'alias': alias.toEJson(),
      'petType': petType.toEJson(),
      'petTypeId': petTypeId.toEJson(),
      'url': url.toEJson(),
      'petBreed': petBreed.toEJson(),
      'birthday': birthday.toEJson(),
    };
  }

  static EJsonValue _toEJson(PetRealm value) => value.toEJson();
  static PetRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'petId': EJsonValue petId,
        'sex': EJsonValue sex,
        'alias': EJsonValue alias,
        'petType': EJsonValue petType,
        'petTypeId': EJsonValue petTypeId,
        'url': EJsonValue url,
      } =>
        PetRealm(
          fromEJson(petId),
          fromEJson(sex),
          fromEJson(alias),
          fromEJson(petType),
          fromEJson(petTypeId),
          fromEJson(url),
          petBreed: fromEJson(ejson['petBreed']),
          birthday: fromEJson(ejson['birthday']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(PetRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, PetRealm, 'PetRealm', [
      SchemaProperty('petId', RealmPropertyType.string),
      SchemaProperty('sex', RealmPropertyType.string),
      SchemaProperty('alias', RealmPropertyType.string),
      SchemaProperty('petType', RealmPropertyType.string),
      SchemaProperty('petTypeId', RealmPropertyType.string),
      SchemaProperty('url', RealmPropertyType.string),
      SchemaProperty('petBreed', RealmPropertyType.string, optional: true),
      SchemaProperty('birthday', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class DoctorRealm extends _DoctorRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  DoctorRealm(
    String doctorId,
    String lastName,
    String firstName, {
    String? middleName,
    String? nickName,
  }) {
    RealmObjectBase.set(this, 'doctorId', doctorId);
    RealmObjectBase.set(this, 'lastName', lastName);
    RealmObjectBase.set(this, 'firstName', firstName);
    RealmObjectBase.set(this, 'middleName', middleName);
    RealmObjectBase.set(this, 'nickName', nickName);
  }

  DoctorRealm._();

  @override
  String get doctorId =>
      RealmObjectBase.get<String>(this, 'doctorId') as String;
  @override
  set doctorId(String value) => RealmObjectBase.set(this, 'doctorId', value);

  @override
  String get lastName =>
      RealmObjectBase.get<String>(this, 'lastName') as String;
  @override
  set lastName(String value) => RealmObjectBase.set(this, 'lastName', value);

  @override
  String get firstName =>
      RealmObjectBase.get<String>(this, 'firstName') as String;
  @override
  set firstName(String value) => RealmObjectBase.set(this, 'firstName', value);

  @override
  String? get middleName =>
      RealmObjectBase.get<String>(this, 'middleName') as String?;
  @override
  set middleName(String? value) =>
      RealmObjectBase.set(this, 'middleName', value);

  @override
  String? get nickName =>
      RealmObjectBase.get<String>(this, 'nickName') as String?;
  @override
  set nickName(String? value) => RealmObjectBase.set(this, 'nickName', value);

  @override
  Stream<RealmObjectChanges<DoctorRealm>> get changes =>
      RealmObjectBase.getChanges<DoctorRealm>(this);

  @override
  Stream<RealmObjectChanges<DoctorRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<DoctorRealm>(this, keyPaths);

  @override
  DoctorRealm freeze() => RealmObjectBase.freezeObject<DoctorRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'doctorId': doctorId.toEJson(),
      'lastName': lastName.toEJson(),
      'firstName': firstName.toEJson(),
      'middleName': middleName.toEJson(),
      'nickName': nickName.toEJson(),
    };
  }

  static EJsonValue _toEJson(DoctorRealm value) => value.toEJson();
  static DoctorRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'doctorId': EJsonValue doctorId,
        'lastName': EJsonValue lastName,
        'firstName': EJsonValue firstName,
      } =>
        DoctorRealm(
          fromEJson(doctorId),
          fromEJson(lastName),
          fromEJson(firstName),
          middleName: fromEJson(ejson['middleName']),
          nickName: fromEJson(ejson['nickName']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(DoctorRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, DoctorRealm, 'DoctorRealm', [
      SchemaProperty('doctorId', RealmPropertyType.string),
      SchemaProperty('lastName', RealmPropertyType.string),
      SchemaProperty('firstName', RealmPropertyType.string),
      SchemaProperty('middleName', RealmPropertyType.string, optional: true),
      SchemaProperty('nickName', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
