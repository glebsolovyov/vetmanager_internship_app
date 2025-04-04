import 'package:vetmanager_internship_app/src/feature/admission/data/dto/doctor_dto.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/doctor.dart';

extension DoctorDtoMapper on DoctorDto {
  Doctor toModel() => Doctor(
        doctorId: doctorId,
        lastName: lastName,
        firstName: firstName,
        middleName: middleName,
        nickName: nickName,
      );
}
