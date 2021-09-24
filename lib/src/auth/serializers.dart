import 'package:anime_tracker/src/core/storage.dart';
import 'package:oauth2/oauth2.dart';

class CredentialsSerializer extends Serializer<Credentials> {
  @override
  Credentials deserialize(String content) {
    return Credentials.fromJson(content);
  }

  @override
  String serialize(Credentials item) {
    return item.toJson();
  }
}
