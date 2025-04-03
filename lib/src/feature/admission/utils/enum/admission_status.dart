enum AdmissionStatus {
  pending,
  completed,
  canceled,
  delayed,
}

extension AdmissionStatusExtension on AdmissionStatus {
  String get title {
    switch (this) {
      case AdmissionStatus.pending:
        return 'Ожидает';
      case AdmissionStatus.completed:
        return 'Завершен';
      case AdmissionStatus.canceled:
        return 'Отменен';
      case AdmissionStatus.delayed:
        return 'Отложен';
    }
  }
}
