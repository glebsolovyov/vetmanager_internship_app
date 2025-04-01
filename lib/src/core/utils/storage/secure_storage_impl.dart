import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'secure_storage.dart';

@Singleton(as: SecureStorage)
class SecureStorageImpl implements SecureStorage {
  final FlutterSecureStorage _secureStorage;

  SecureStorageImpl({
    required FlutterSecureStorage secureStorage,
  }) : _secureStorage = secureStorage;

  @factoryMethod
  factory SecureStorageImpl.standard() {
    return SecureStorageImpl(secureStorage: const FlutterSecureStorage());
  }

  @override
  Future<void> delete(String key) {
    return _secureStorage.delete(key: key);
  }

  @override
  Future<T?> read<T>(String key) async {
    final value = await _secureStorage.read(key: key);
    if (value == null) {
      return null;
    }

    switch (T) {
      case const (String):
        return value as T?;
      case const (int):
        return int.tryParse(value) as T?;
      case const (bool):
        return bool.tryParse(value) as T?;
      case const (double):
        return double.tryParse(value) as T?;
    }

    throw ArgumentError('Unsupported type ${T.runtimeType}');
  }

  @override
  Future<void> write<T>(String key, T value) {
    return _secureStorage.write(key: key, value: value.toString());
  }
}
