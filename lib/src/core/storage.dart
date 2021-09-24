import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class Serializer<T> {
  String serialize(T item);
  T deserialize(String content);
}

abstract class Storage<T> {
  Future<T?> read();
  Future write(T item);
  Future delete();
}

class SecureStorage<T> extends Storage<T> {
  SecureStorage({required this.serializer, required this.storageKey});

  final Serializer<T> serializer;
  final String storageKey;
  static const _secureStorage = FlutterSecureStorage();

  @override
  Future<T?> read() async {
    final serialized = await _secureStorage.read(key: storageKey);
    if (serialized != null) {
      return serializer.deserialize(serialized);
    }
    return null;
  }

  @override
  Future write(T item) {
    final value = serializer.serialize(item);
    return _secureStorage.write(key: storageKey, value: value);
  }

  @override
  Future delete() {
    return _secureStorage.delete(key: storageKey);
  }
}
