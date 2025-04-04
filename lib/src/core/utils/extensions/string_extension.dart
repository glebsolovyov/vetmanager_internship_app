import 'package:vetmanager_internship_app/src/feature/admission/utils/enum/admission_status.dart';
import 'package:vetmanager_internship_app/src/feature/admission/utils/enum/pet_sex.dart';

extension StringExtension on String {
  AdmissionStatus get admissionStatus {
    {
      switch (this) {
        case 'pending':
          return AdmissionStatus.pending;
        case 'completed':
          return AdmissionStatus.completed;
        case 'canceled':
          return AdmissionStatus.canceled;
        case 'delayed':
          return AdmissionStatus.delayed;
        default:
          return AdmissionStatus.pending;
      }
    }
  }

  PetSex get petSex {
    switch (this) {
      case 'male':
        return PetSex.male;
      case 'female':
        return PetSex.female;
      case 'unknown':
      default:
        return PetSex.unknown;
    }
  }

  Uri get getUri {
    print('this:$this');
    final a = Uri.parse(this);
    print('ext:$a');
    return a;
  }
}
