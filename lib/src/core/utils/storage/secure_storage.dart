/// [SecureStorage] stores and manages application secrets.
abstract interface class SecureStorage {
  /// Reads a value from the storage with the given [key].
  Future<T?> read<T>(String key);

  /// Writes a value to the storage with the given [key].
  Future<void> write<T>(String key, T value);

  /// Deletes a value from the storage with the given [key].
  Future<void> delete(String key);
}
